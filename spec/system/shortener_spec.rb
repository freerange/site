require 'rails_helper'

RSpec.describe 'shortener', type: :system do
  let(:email) { 'test@example.com' }
  let(:password) { 'password' }

  before do
    Shortener::User.create!(email:, password:)
    driven_by(:rack_test)
  end

  around do |example|
    original_host = Capybara.app_host
    Capybara.app_host = Shortener.origin
    example.run
  ensure
    Capybara.app_host = original_host
  end

  it 'shortens URLs' do
    visit shortener_mappings_path

    fill_in :email, with: email
    fill_in :password, with: password
    click_on 'Sign in'
    expect(page).to have_content('Success!')

    fill_in 'URL', with: 'http://target.example.com/foo'
    fill_in 'Key (optional)', with: 'foo'
    click_on 'Shorten URL'
    expect(page).to have_content('Success!')

    fill_in 'URL', with: 'http://target.example.com/bar'
    click_on 'Shorten URL'
    expect(page).to have_content('Success!')

    rows = parse_table('table')
    expect(rows[0]).to include(
      'Key' => '2zYFqT',
      'URL' => 'http://target.example.com/bar',
      'Short URL' => shortener_redirect_url('2zYFqT')
    )
    expect(rows[1]).to include(
      'Key' => 'foo',
      'URL' => 'http://target.example.com/foo',
      'Short URL' => shortener_redirect_url('foo')
    )

    click_on shortener_redirect_url('2zYFqT')
    expect(current_url).to eq('http://target.example.com/bar')

    visit shortener_mappings_path

    click_on shortener_redirect_url('foo')
    expect(current_url).to eq('http://target.example.com/foo')
  end

  def parse_table(selector)
    table = page.find(selector)

    thead = table.find('thead')
    headers = thead.all('tr').flat_map { |tr| tr.all('th').map(&:text) }

    tbody = table.find('tbody')
    rows = tbody.all('tr').map { |tr| tr.all('td').map(&:text) }

    rows.map { |r| headers.zip(r).to_h }
  end
end
