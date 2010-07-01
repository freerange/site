set :stages, %w(production)
set :default_stage, "production"

require 'freerange/deploy'

set :repository, 'git@github.com:freerange/site.git'
set :application, 'gofreerange.com' # defaults to the name of the repo at origin

namespace :deploy do
  task :migrate do ; end
end

namespace :host do
  task :setup do ; end
  task :create do ; end
end

namespace :redis do
  task :setup do ; end
end

namespace :monit do
  task :setup do ; end
end