require 'rails_helper'
require 'spider'

RSpec.describe 'spider' do
  ARTEFACTS_PATH = Rails.root.join('artefacts')

  it 'checks that HTML output has not changed' do
    spider = Spider.new(artefacts_path: ARTEFACTS_PATH)
    differences = spider.artefact_differences
    message = "Changes in artefacts have been detected:\n#{differences}"
    expect(differences).to be_empty, message
  end
end
