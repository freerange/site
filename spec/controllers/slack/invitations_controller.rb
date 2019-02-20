require 'rails_helper'

describe Slack::InvitationsController do
  describe 'GET #new' do
    it 'assigns invitation' do
      get :new
      expect(assigns(:invitation)).to be_instance_of(Slack::Invitation)
    end
  end

  describe 'POST #create' do
    let(:slack_subdomain) { Slack::InvitationsController::SLACK_SUBDOMAIN }
    let(:slack_endpoint) { Slack::InvitationsController::SLACK_ENDPOINT }

    let(:email) { 'joe@example.com' }
    let(:params) { { email: email } }

    let(:code) { '200' }
    let(:message) { nil }

    let(:ok) { true }
    let(:error) { nil }
    let(:body) { { ok: ok, error: error }.to_json }

    let(:slack_response) do
      instance_double('Net::HTTPOK', code: code, message: message, body: body)
    end

    let(:slack_api_token) { 'slack-api-token' }

    before do
      allow(Net::HTTP).to receive(:post_form).and_return(slack_response)
      ENV['SLACK_API_TOKEN'] = slack_api_token
    end

    it 'posts form to Slack endpoint to send invitation' do
      post :create, params: params
      expect(Net::HTTP).to have_received(:post_form)
        .with(slack_endpoint, anything)
    end

    it 'posts form data to send invitation' do
      post :create, params: params
      expect(Net::HTTP).to have_received(:post_form)
        .with(anything, include(
          email: email,
          channels: slack_subdomain,
          set_active: true,
          _attempts: 1,
          token: slack_api_token
        ))
    end

    it 'redirects to new action' do
      post :create, params: params
      expect(response).to redirect_to(new_slack_invitation_path)
    end

    it 'sets flash notice' do
      post :create, params: params
      expect(flash[:notice]).to eq('Invitation sent!')
    end

    context 'when email is invalid' do
      let(:email) { '' }
      let(:error_message) { "Validation error: Email can't be blank" }

      it 'renders new template' do
        post :create, params: params
        expect(response).to render_template(:new)
      end

      it 'sets flash alert to error message' do
        post :create, params: params
        expect(flash.now[:alert]).to eq(error_message)
      end
    end

    context 'when response code is not 200 OK' do
      let(:code) { '500' }
      let(:message) { 'Internal server error' }
      let(:error_message) { 'Slack API error: 500 Internal server error' }

      it 'renders new template' do
        post :create, params: params
        expect(response).to render_template(:new)
      end

      it 'sets flash alert to error message' do
        post :create, params: params
        expect(flash.now[:alert]).to eq(error_message)
      end

      it 'reports error to airbrake' do
        expect(controller).to receive(:notify_airbrake).with(error_message)
        post :create, params: params
      end
    end

    context 'when ok is not true' do
      let(:ok) { false }
      let(:error) { 'already_invited' }
      let(:error_message) { 'Slack API error: already_invited' }

      it 'renders new template' do
        post :create, params: params
        expect(response).to render_template(:new)
      end

      it 'sets flash alert to error message' do
        post :create, params: params
        expect(flash.now[:alert]).to eq(error_message)
      end

      it 'reports error to airbrake' do
        expect(controller).to receive(:notify_airbrake).with(error_message)
        post :create, params: params
      end
    end
  end
end
