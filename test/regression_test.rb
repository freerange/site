require 'test_helper'

class RegressionTest < ActiveSupport::TestCase
  ROOT_PATH = Pathname.new(File.expand_path('../..', __FILE__))
  ARTEFACTS_PATH = ROOT_PATH.join('artefacts')

  def test_nothing_has_changed
    diff_output = `git status --short -- #{ARTEFACTS_PATH}`
    message = "Changes in artefacts have been detected:\n#{diff_output}"
    assert diff_output.strip.empty?, message
  end
end
