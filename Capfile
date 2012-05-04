require 'recap/recipes/ruby'

set :application_user, 'freerange'
set :application, 'gofreerange.com'
set :repository, 'git@github.com:freerange/site.git'

server 'gofreerange.com', :app

namespace :deploy do
  task :restart do
    run "cd #{deploy_to} && mkdir -p tmp && touch tmp/restart.txt"
  end
end