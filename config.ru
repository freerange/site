$:.unshift File.join(File.dirname(__FILE__), *%w[lib])
require 'vanilla'
require 'vanilla/static'

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

use Vanilla::Static, File.join(File.dirname(__FILE__), 'public')

run app
