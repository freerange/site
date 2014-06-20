require 'recap/recipes/ruby'

set :application_user, 'freerange'
set :application, 'gofreerange.com'
set :repository, 'git@github.com:freerange/site.git'
set :branch, 'migrating-to-another-server'

server 'badger.gofreerange.com', :app

namespace :deploy do
  task :restart do
    as_app "mkdir -p tmp && touch tmp/restart.txt"
  end
end
