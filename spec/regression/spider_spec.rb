require 'rails_helper'

RSpec.describe 'spider' do
  ARTEFACTS_PATH = Rails.root.join('artefacts')

  it 'checks that HTML output has not changed' do
    status_output = `git status --short -- #{ARTEFACTS_PATH}`
    message = "Changes in artefacts have been detected:\n#{status_output}"
    expect(status_output.strip).to be_empty, message
  end
end
