Rails.application.routes.draw do
  match '(*any)', to: redirect(subdomain: ''), via: :all, constraints: { subdomain: 'www' }
  get '(*any)', to: redirect(subdomain: '', path: '/geohash-explorer'), constraints: { subdomain: 'geohash' }
  get '(*any)', to: redirect(subdomain: '', path: '/gfr-video-about'), constraints: { subdomain: 'video' }

  root to: 'pages#show'
  get '/feed.xml', to: 'pages#feed', format: 'atom'
  get '/GoFreeRangeBlog', to: 'pages#feed', format: 'atom'
  get '/sitemap.xml', to: 'pages#sitemap'

  namespace :twilio do
    defaults format: :xml do
      resource :conference, only: %i(create) do
        member do
          get :auth
          get :auth_fail
        end
      end
    end
    resources :assets, only: %(show)
  end

  get '/lms-test', to: 'lms_test#index'
  post '/lms-test/lti', to: 'lms_test#lti'
  post '/lms-test/signout', to: 'lms_test#signout'

  get '/hello-printer', to: redirect('https://exciting.io/2012/04/12/hello-printer')
  get '/printer-questions', to: redirect('https://exciting.io/2012/05/01/printer-questions')
  get '/printer-kit', to: redirect('https://exciting.io/printer')
  get '/printer', to: redirect('https://exciting.io/printer')
  get '/harmonia', to: redirect('https://exciting.io/harmonia')
  get '/heylist', to: redirect('https://exciting.io/heylist')
  get '/say-hello-to-heylist', to: redirect('https://exciting.io/2013/03/25/introducing-heylist')

  get '/recap/docs', to: redirect('https://freerange.github.io/recap')
  get '/recap/docs/*path', to: redirect('https://freerange.github.io/recap/%{path}'), format: false

  get '/mocha/docs', to: redirect('https://mocha.jamesmead.org')
  get '/mocha/docs/*path', to: redirect('https://mocha.jamesmead.org/%{path}'), format: false

  get '*path', to: 'pages#show'
end
