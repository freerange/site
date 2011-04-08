require 'bundler/setup'

$:.unshift File.join(File.dirname(__FILE__), *%w[lib])
require 'vanilla'
require 'vanilla/static'
require 'blog'
require 'kramdown'

app = Vanilla::App.new(ENV['VANILLA_CONFIG'])

use Rack::Session::Cookie, :key => 'vanilla.session',
                           :path => '/',
                           :expire_after => 2592000,
                           :secret => app.config[:secret]

use Vanilla::Static, File.join(File.dirname(__FILE__), 'public')

run app
