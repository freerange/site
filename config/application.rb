require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
# require "active_record/railtie"
require "action_controller/railtie"
# require "action_mailer/railtie"
require "action_view/railtie"
# require "action_cable/engine"
# require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Site
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    def self.soup
      @soup ||= begin
        backend_dirs = %w(
          soups
          soups/people
          soups/projects
          soups/blog
          soups/weeklinks
          soups/weeknotes
          soups/wiki
          soups/show-and-tell
        )
        backends = backend_dirs.map do |path|
          Soup::Backends::FileBackend.new(Rails.root.join(path))
        end
        Soup.new(Soup::Backends::MultiSoup.new(*backends))
      end
    end
  end
end
