module Shortener
  def self.host
    components[1]
  end

  def self.origin
    scheme, host, port = components
    url = "#{scheme}://#{host}"
    port ? "#{url}:#{port}" : url
  end

  private

  def self.components
    case Rails.env
    when 'development'
      ['http', 'gfr.localhost', 3000]
    when 'test'
      ['http', 'shortener.example.com']
    when 'production'
      ['http', 'gfr.coop']
    else
      raise "Unexpected environment: #{Rails.env}"
    end
  end
end
