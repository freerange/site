Rails.application.routes.draw do
  root to: 'pages#show'
  get '/feed.xml', to: 'pages#feed'
  get '/sitemap.xml', to: 'pages#sitemap'
  get '*path', to: 'pages#show'
end
