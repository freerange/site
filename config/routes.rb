Rails.application.routes.draw do
  root to: 'pages#show'
  get '/feed.xml', to: 'pages#feed'
  get '*path', to: 'pages#show'
end
