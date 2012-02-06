require 'recap/deploy'

server "gofreerange.com", :app

set :application_user, "freerange"
set :repository, 'git@github.com:freerange/site.git'
set :application, 'gofreerange.com'

namespace :deploy do
  task :restart do
    run "cd #{deploy_to} && mkdir -p tmp && touch tmp/restart.txt"
  end
end