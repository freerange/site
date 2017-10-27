require 'rails_helper'

RSpec.describe 'page request' do
  it 'raises UnknownFormat exception if Accept header is set to plain/text' do
    expect { get '/start', headers: { accept: 'plain/text' } }
      .to raise_error(ActionController::UnknownFormat)
  end
end
