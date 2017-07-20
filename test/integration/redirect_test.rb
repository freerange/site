require 'test_helper'

class RedirectTest < ActionDispatch::IntegrationTest
  test '/hello-printer is redirected permanently to exciting.io' do
    get '/hello-printer'
    assert_permanently_redirected_to 'http://exciting.io/2012/04/12/hello-printer'
  end

  test '/printer-questions is redirected permanently to exciting.io' do
    get '/printer-questions'
    assert_permanently_redirected_to 'http://exciting.io/2012/05/01/printer-questions'
  end

  test '/printer-kit is redirected permanently to exciting.io' do
    get '/printer-kit'
    assert_permanently_redirected_to 'http://exciting.io/printer'
  end

  test '/printer is redirected permanently to exciting.io' do
    get '/printer'
    assert_permanently_redirected_to 'http://exciting.io/printer'
  end

  test '/harmonia is redirected permanently to exciting.io' do
    get '/harmonia'
    assert_permanently_redirected_to 'http://exciting.io/harmonia'
    assert_response :moved_permanently
  end

  test '/heylist is redirected permanently to exciting.io' do
    get '/heylist'
    assert_permanently_redirected_to 'http://exciting.io/heylist'
    assert_response :moved_permanently
  end

  test '/say-hello-to-heylist is redirected permanently to exciting.io' do
    get '/say-hello-to-heylist'
    assert_permanently_redirected_to 'http://exciting.io/2013/03/25/introducing-heylist'
    assert_response :moved_permanently
  end

  private

  def assert_permanently_redirected_to(url)
    assert_redirected_to url
    assert_response :moved_permanently
  end
end
