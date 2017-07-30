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
      @soup ||= Soup.new(Soup::Backends::MultiSoup.new(
        backend_for('soups'),
        backend_for('soups/people'),
        backend_for('soups/projects'),
        backend_for('soups/blog'),
        backend_for('soups/weeklinks'),
        backend_for('soups/weeknotes'),
        backend_for('soups/wiki'),
        backend_for('soups/show-and-tell')
      ))
    end

    def self.projects
      @projects ||= Soup.new(backend_for('soups/projects'))
    end

    def self.weeklinks_pages
      @weeklinks ||= Soup.new(backend_for('soups/weeklinks'))
    end

    def self.weeknotes_pages
      @weeknotes ||= Soup.new(backend_for('soups/weeknotes'))
    end

    # intentionally not included in multi-soup
    def self.templates
      @templates ||= Soup.new(backend_for('soups/templates'))
    end

    def self.backend_for(path)
      Soup::Backends::FileBackend.new(Rails.root.join(path))
    end
  end
end
