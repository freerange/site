$:.unshift File.join(File.dirname(__FILE__), *%w[lib])
require 'vanilla'

app = Vanilla::App.new(ENV['VANILLA_CONFIG'])

use Rack::Session::Cookie, :key => 'vanilla.session',
                           :path => '/',
                           :expire_after => 2592000,
                           :secret => app.config[:secret]

require 'vanilla/authentication/warden'
app.authenticator = Vanilla::Authentication::Warden.new(app)
use Warden::Manager do |manager|
  manager.default_strategies :vanilla
  manager.failure_app = Vanilla::Authentication::Warden::FailApp.new
end

use Rack::Static, :urls => ["/public"], :root => File.join(File.dirname(__FILE__))

run app
