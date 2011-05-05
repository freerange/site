require 'rubygems'
require 'bundler/setup'
require 'test/unit'

require "vanilla"
require "application"

class Test::Unit::TestCase
  include Vanilla::TestHelper

  def assert_response_body_match(expected, uri)
    get uri
    assert_match expected, last_response.body
  end
end