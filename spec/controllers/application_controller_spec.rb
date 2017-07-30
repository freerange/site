require 'rails_helper'

RSpec.describe ApplicationController, type: :controller do
  controller do
    attr_accessor :exception

    def error
      raise exception
    end
  end

  describe 'rescue_from' do
    let(:exception) { Base::NotFoundError.new('exception-message') }

    before do
      routes.draw { get 'error' => 'anonymous#error' }
      controller.exception = exception
    end

    it 'responds with not found status code' do
      get :error

      expect(response).to have_http_status(:not_found)
    end

    it 'renders exception message in response body' do
      get :error

      expect(response.body).to eq('exception-message')
    end
  end
end
