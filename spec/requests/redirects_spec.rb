require 'rails_helper'

RSpec.describe 'redirects' do
  it 'permanently redirects /hello-printer to exciting.io' do
    get '/hello-printer'
    assert_permanently_redirected_to 'https://exciting.io/2012/04/12/hello-printer'
  end

  it 'permanently redirects /printer-questions to exciting.io' do
    get '/printer-questions'
    assert_permanently_redirected_to 'https://exciting.io/2012/05/01/printer-questions'
  end

  it 'permanently redirects /printer-kit to exciting.io' do
    get '/printer-kit'
    assert_permanently_redirected_to 'https://exciting.io/printer'
  end

  it 'permanently redirects /printer to exciting.io' do
    get '/printer'
    assert_permanently_redirected_to 'https://exciting.io/printer'
  end

  it 'permanently redirects /harmonia to exciting.io' do
    get '/harmonia'
    assert_permanently_redirected_to 'https://exciting.io/harmonia'
    assert_response :moved_permanently
  end

  it 'permanently redirects /heylist to exciting.io' do
    get '/heylist'
    assert_permanently_redirected_to 'https://exciting.io/heylist'
    assert_response :moved_permanently
  end

  it 'permanently redirects /say-hello-to-heylist to exciting.io' do
    get '/say-hello-to-heylist'
    assert_permanently_redirected_to 'https://exciting.io/2013/03/25/introducing-heylist'
    assert_response :moved_permanently
  end

  private

  def assert_permanently_redirected_to(url)
    assert_redirected_to url
    assert_response :moved_permanently
  end
end