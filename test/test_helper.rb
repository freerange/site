$LOAD_PATH.unshift File.expand_path("../..", __FILE__)
require "application"
require 'test/unit'

class Test::Unit::TestCase
  include Vanilla::TestHelper

  def assert_response_body_match(expected, uri)
    get uri
    assert_match expected, last_response.body
  end
end