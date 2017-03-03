require 'nokogiri'

class Spider
  HOST, PORT = 'localhost', 9292
  SITE_URL = "http://#{HOST}:#{PORT}"
  HOME_PAGE_URL = URI.join(SITE_URL, '/')

  SERVER_COMMAND = "RANDOM_SEED=12345 rackup --host #{HOST} --port #{PORT}"

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

  EXTRA_PATHS = [
    '/feed.xml'
  ]

  def initialize(artefacts_path:)
    @server = Server.new(
      command: SERVER_COMMAND,
      healthcheck_url: HOME_PAGE_URL
    )

    @client = Client.new(
      sitemap_path: '/sitemap.xml',
      ignore_paths: IGNORE_PATHS,
      extra_paths: EXTRA_PATHS,
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

    def initialize(sitemap_path:, ignore_paths:, extra_paths:, allowed_host:, allowed_protocol:, artefacts_path:)
      @sitemap_path = sitemap_path
      @ignore_paths = ignore_paths
      @extra_paths = extra_paths
      @allowed_host = allowed_host
      @allowed_protocol = allowed_protocol
      @artefacts_path = artefacts_path
    end

    def run
      paths = paths_from(@sitemap_path) + @extra_paths
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

    def paths_from(sitemap_path)
      response = get(sitemap_path)
      doc = Nokogiri::XML(response.body)
      namespace = 'http://www.sitemaps.org/schemas/sitemap/0.9'
      locs = doc.xpath('//urlset:url//urlset:loc', 'urlset' => namespace)
      locs.map(&:text).map { |u| URI(u).path }.uniq
    end

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
      File.write(artefact_path, response.body)
      response
    end
  end
end
