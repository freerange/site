$: << File.dirname(__FILE__)

require "application"
require "vanilla/static"
require "airbrake"

class CustomExceptionHandlingMiddleware
  def initialize(app)
    @app = app
  end

  def call(env)
    @app.call(env)
  rescue Rack::Utils::InvalidParameterError => exception
    [400, { 'Content-Type' => 'text/plain' }, [ exception.message ] ]
  end
end

use Vanilla::Static, File.join(File.dirname(__FILE__), "public")

if ENV["RACK_ENV"] == "production"
  use Rack::Static, :urls => ["/recap/docs"], :root => "/home/freerange/docs/recap"
  use Rack::Static, :urls => ["/mocha/docs"], :root => "/home/freerange/docs/mocha"

  Airbrake.configure do |config|
    config.api_key = ENV.fetch('AIRBRAKE_API_KEY')
    config.host    = ENV.fetch('AIRBRAKE_HOST')
    config.port    = 443
    config.secure  = config.port == 443
  end
  use Airbrake::Rack
  use CustomExceptionHandlingMiddleware
end

run Application.new
