require 'rails_helper'

RSpec.describe 'redirects' do
  it 'permanently redirects www subdomain to naked domain' do
    get '/', headers: { host: 'www.example.com' }
    assert_permanently_redirected_to 'http://example.com/'
  end

  it 'permanently redirects geohash subdomain to geohash-explorer page' do
    get '/', headers: { host: 'geohash.example.com' }
    assert_permanently_redirected_to 'http://example.com/geohash-explorer'
  end

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
  end

  it 'permanently redirects /heylist to exciting.io' do
    get '/heylist'
    assert_permanently_redirected_to 'https://exciting.io/heylist'
  end

  it 'permanently redirects /say-hello-to-heylist to exciting.io' do
    get '/say-hello-to-heylist'
    assert_permanently_redirected_to 'https://exciting.io/2013/03/25/introducing-heylist'
  end

  it 'permanently redirects /recap/docs to docs on GitHub Pages' do
    get '/recap/docs'
    assert_permanently_redirected_to 'https://freerange.github.io/recap'
  end

  it 'permanently redirects /recap/docs/recap.html to docs on GitHub Pages' do
    get '/recap/docs/recap.html'
    assert_permanently_redirected_to 'https://freerange.github.io/recap/recap.html'
  end

  it 'permanently redirects /mocha/docs to docs on GitHub Pages' do
    get '/mocha/docs'
    assert_permanently_redirected_to 'https://mocha.jamesmead.org'
  end

  it 'permanently redirects /recap/docs/Mocha.html to docs on GitHub Pages' do
    get '/mocha/docs/Mocha.html'
    assert_permanently_redirected_to 'https://mocha.jamesmead.org/Mocha.html'
  end

  private

  def assert_permanently_redirected_to(url)
    assert_redirected_to url
    assert_response :moved_permanently
  end
end
