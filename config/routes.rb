Rails.application.routes.draw do
  root to: 'pages#show'
  get '/feed.xml', to: 'pages#feed'
  get '/sitemap.xml', to: 'pages#sitemap'

  get '/hello-printer', to: redirect('http://exciting.io/2012/04/12/hello-printer')
  get '/printer-questions', to: redirect('http://exciting.io/2012/05/01/printer-questions')
  get '/printer-kit', to: redirect('http://exciting.io/printer')
  get '/printer', to: redirect('http://exciting.io/printer')
  get '/harmonia', to: redirect('http://exciting.io/harmonia')
  get '/heylist', to: redirect('http://exciting.io/heylist')
  get '/say-hello-to-heylist', to: redirect('http://exciting.io/2013/03/25/introducing-heylist')

  get '*path', to: 'pages#show'
end
