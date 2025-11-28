require 'rails_helper'

RSpec.describe 'page request' do
  it 'responds with 406 Not Acceptable if Accept header is set to plain/text' do
    get '/start', headers: { accept: 'plain/text' }

    expect(response).to have_http_status(:not_acceptable)
  end
end
