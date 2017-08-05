Rails.application.routes.draw do
  root to: 'pages#show'
  get '/feed.xml', to: 'pages#feed', format: 'atom'
  get '/sitemap.xml', to: 'pages#sitemap'

  get '/hello-printer', to: redirect('https://exciting.io/2012/04/12/hello-printer')
  get '/printer-questions', to: redirect('https://exciting.io/2012/05/01/printer-questions')
  get '/printer-kit', to: redirect('https://exciting.io/printer')
  get '/printer', to: redirect('https://exciting.io/printer')
  get '/harmonia', to: redirect('https://exciting.io/harmonia')
  get '/heylist', to: redirect('https://exciting.io/heylist')
  get '/say-hello-to-heylist', to: redirect('https://exciting.io/2013/03/25/introducing-heylist')

  get '*path', to: 'pages#show'
end
