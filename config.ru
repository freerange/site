$: << File.dirname(__FILE__)

require "application"
require "vanilla/static"

use Vanilla::Static, File.join(File.dirname(__FILE__), "public")

use Rack::ShowExceptions

run Application.new
