Rails.application.routes.draw do
  root to: 'pages#show'
  get '*path', to: 'pages#show'
end
