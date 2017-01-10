require 'nokogiri'
require 'net/http'

class Spider
  HOST, PORT = 'localhost', 9292
  SITE_URL = "http://#{HOST}:#{PORT}"
  HOME_PAGE_URL = URI.join(SITE_URL, '/')

  SERVER_COMMAND = %{TIME_NOW="2017-07-17 00:00:00" TAGLINE_INDEX=0 rackup --host #{HOST} --port #{PORT}}

  # Based on RewriteRules in config/apache/gofreerange.com.conf
  IGNORE_PATHS = [
    %r{^/mocha/docs*},
    %r{^/recap/docs*},
    %r{^/hello-printer*},
    %r{^/printer-questions*},
    %r{^/printer-kit*},
    %r{^/printer*},
    %r{^/harmonia*},
    %r{^/heylist*},
    %r{^/say-hello-to-heylist*},
  ]

  # Not much point in capturing paths to images
  IGNORE_PATHS << %r{^/images/*}

  # Subset of dynasnips
  EXTRA_PATHS = ['/sitemap.xml', '/feed.xml']

  ROOT_PATH = Pathname.new(File.expand_path('../..', __FILE__))

  def initialize(artefacts_path:)
    soup = begin
      backend_dirs = %w(
        soups
        soups/weeknotes
        soups/weeklinks
        soups/blog
        soups/show-and-tell
        soups/wiki
        soups/people
        soups/projects
      )
      backends = backend_dirs.map do |path|
        Soup::Backends::FileBackend.new(ROOT_PATH.join(path))
      end
      Soup.new(Soup::Backends::MultiSoup.new(*backends))
    end

    seed_paths = soup.all_snips.map(&:name).map { |name| "/#{name}"}
    seed_paths += EXTRA_PATHS

    @server = Server.new(
      command: SERVER_COMMAND,
      healthcheck_url: HOME_PAGE_URL
    )

    @client = Client.new(
      seed_paths: seed_paths,
      ignore_paths: IGNORE_PATHS,
      allowed_host: 'gofreerange.com',
      allowed_protocol: 'http',
      artefacts_path: artefacts_path
    )
  end

  def run
    @server.run do
      @client.run
    end
  end

  class Server
    def initialize(command:, healthcheck_url:)
      @command = command
      @healthcheck_url = healthcheck_url
    end

    def run(&block)
      startup
      block.call
    ensure
      shutdown
    end

    def startup
      puts 'Starting server'
      @pid = spawn(@command)
      until server_responding?; end
      puts 'Server has started'
    end

    def shutdown
      puts 'Stopping server'
      Process.kill('SIGINT', @pid)
      Process.wait(@pid)
      puts 'Server has stopped'
    end

    private

    def server_responding?
      Net::HTTPSuccess === Net::HTTP.get_response(@healthcheck_url)
    rescue Errno::ECONNREFUSED
      false
    end
  end

  class Client
    class HttpRetry < StandardError; end

    def initialize(seed_paths:, ignore_paths:, allowed_host:, allowed_protocol:, artefacts_path:)
      @seed_paths = seed_paths
      @ignore_paths = ignore_paths
      @allowed_host = allowed_host
      @allowed_protocol = allowed_protocol
      @artefacts_path = artefacts_path
    end

    def run
      paths = @seed_paths.dup
      index = 0
      while index < paths.length
        path = paths[index]
        index += 1
        next if @ignore_paths.any? { |r| r.match(path) }
        puts "Requesting: #{path}"
        response = get(path)
        doc = Nokogiri::HTML(response.body)
        anchors = doc.css('a')
        urls = anchors.map { |a| a['href'] }
        urls.select! { |u| [nil, @allowed_host].include?(URI(u).host) }
        urls.select! { |u| [nil, @allowed_protocol].include?(URI(u).scheme) }
        new_paths = urls.map { |u| URI(u).path }
        new_paths.each { |p| paths << p unless paths.include?(p) }
      end
    end

    private

    def artefact_path(path)
      path = File.join(path, 'index.html') if File.directory?(path) || path.empty?
      path = "#{File.basename(path, '.*')}.html" if File.extname(path).empty?
      File.join(@artefacts_path, path)
    end

    def get(path)
      url = URI.join(SITE_URL, path)
      response = nil
      begin
        response = Net::HTTP.get_response(url)
        raise HttpRetry unless Net::HTTPSuccess === response
      rescue HttpRetry
        puts "Retrying request for: #{path}"
        retry
      end
      artefact_path = artefact_path(path)
      FileUtils.mkdir_p(File.dirname(artefact_path))
      File.open(artefact_path, 'wb') do |f|
        f.write(response.body)
      end
      response
    end
  end
end