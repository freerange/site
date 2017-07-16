$:.unshift File.join(File.dirname(__FILE__), *%w[lib])
require 'rubygems'
require 'bundler/setup'
require 'vanilla'

require 'blog_renderer'
require 'kramdown_renderer'

require 'timecop'
time_now = ENV['TIME_NOW']
Timecop.freeze(Time.parse(time_now)) if time_now

class Application < Vanilla::App
end

Application.configure do |config|
  # The root directory of the application; normally the directory this
  # file is in.
  config.root = File.dirname(__FILE__)

  # The snip to render on requests to "/". This defaults to "start"
  config.root_snip = "start"

  # You can register additional renderer classes, to be used with snips
  # with the given extensions or 'render_as' attributes
  config.renderers.merge!({
    :blog => Vanilla::Renderers::Blog,
    :markdown => Vanilla::Renderers::Kramdown
  })

  # You can partition your snips into subdirectories to keep things tidy.
  # This doesn't affect their URL structure on the site (everything is
  # flat).
  #
  # You should ensure that the system soup is at the bottom of this list
  # unless you really know what you are doing.
  config.soups = [
    "soups",
    "soups/dynasnips",
    "soups/people",
    "soups/projects",
    "soups/blog",
    "soups/weeklinks",
    "soups/weeknotes",
    "soups/wiki",
    "soups/show-and-tell",
    "soups/layouts",
    "soups/system"
  ]

  config.raise_errors = true

  $LOAD_PATH.unshift File.expand_path(File.join(config.root, "soups/dynasnips"))
end
