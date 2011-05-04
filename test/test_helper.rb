require 'rubygems'
require 'bundler/setup'
require "fileutils"
require "rack/mock"
require "vanilla"
require 'test/unit'

module Vanilla
  module Test
    def setup_clean_environment
      FileUtils.mkdir_p(File.dirname(config_file_for_tests))
      File.open(config_file_for_tests, 'w') { |f| f.write({:soup => soup_path}.to_yaml) }
      @app = Vanilla::App.new(config_file_for_tests)

     require "vanilla/dynasnips/current_snip"
     @app.soup << CurrentSnip.snip_attributes
     create_snip :name => "layout", :content => "{current_snip}"
    end

    def response_for(url)
      mock_env = Rack::MockRequest.env_for(url)
      @app.call(mock_env)
    end

    def response_body_for(url)
      response_for(url)[2].body[0]
    end

    def response_code_for(url)
      response_for(url)[0]
    end

    def assert_response_body_equal(expected, uri)
      assert_equal expected.strip, response_body_for(uri).strip
    end
    
    def assert_response_body_match(expected, uri)
      assert_match expected, response_body_for(uri).strip
    end

    def set_main_template(template_content)
      @app.soup << {:name => "layout", :content => template_content}
    end

    def create_snip(params)
      @app.soup << params
    end

    def mock_env_for_url(url)
      Rack::MockRequest.env_for(url)
    end

    def mock_request(url)
      Rack::Request.new(mock_env_for_url(url))
    end

    def test_app_directory
      File.join(File.dirname(__FILE__), "tmp")
    end

    def config_file_for_tests
      File.join(test_app_directory, "config.yml")
    end

    def config_for_tests(options={})
      File.open(config_file_for_tests, 'w') { |f| f.write({:soup => soup_path}.update(options).to_yaml) }
    end

    def soup_path
      File.expand_path(File.join(test_app_directory, "soup"))
    end
  end
end