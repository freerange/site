require 'rails_helper'

describe 'slack/invitations/new.html.erb' do
  context 'when flash alert is present' do
    before do
      flash[:alert] = 'Alert!'
    end

    it 'renders alert text' do
      render
      expect(rendered).to have_css('.flash-alert', text: 'Alert!')
    end
  end

  context 'when flash alert is not present' do
    it 'renders alert text' do
      render
      expect(rendered).not_to have_css('.flash-alert')
    end
  end

  context 'when flash notice is present' do
    before do
      flash[:notice] = 'Notice!'
    end

    it 'renders notice text' do
      render
      expect(rendered).to have_css('.flash-notice', text: 'Notice!')
    end
  end

  context 'when flash notice is not present' do
    it 'renders notice text' do
      render
      expect(rendered).not_to have_css('.flash-notice')
    end
  end

  it 'renders form with action to create invitation' do
    render
    expect(rendered).to have_css(%{form[action="#{slack_invitations_path}"]})
  end

  it 'renders form with email address field' do
    render
    expect(rendered).to have_css('form input[type="email"][name="email"]')
  end

  it 'renders form with submit button' do
    render
    expect(rendered).to have_css('form button[type="submit"]', text: 'Request Invitation')
  end
end
