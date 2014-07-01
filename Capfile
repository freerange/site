require 'recap/recipes/ruby'

set :application_user, 'freerange'
set :application, 'gofreerange.com'
set :repository, 'git@github.com:freerange/site.git'

server 'badger.gofreerange.com', :app

namespace :apache do
  desc "Copy the apache config file from this app to /etc/apache2/sites-available"
  task :update_config do
    apache_config = File.join(deploy_to, 'config', 'apache', 'gofreerange.com.conf')
    sudo "cp #{apache_config} /etc/apache2/sites-available/"
  end

  desc "Make this site available to Apache"
  task :enable_config do
    apache.update_config
    sudo "a2ensite gofreerange.com"
  end

  desc "Reload the Apache webserver, particularly useful after updating the Apache config"
  task :reload do
    sudo "service apache2 reload"
  end
end

namespace :deploy do
  task :restart do
    as_app "mkdir -p tmp && touch tmp/restart.txt"
  end
end

after "apache:enable_config", "apache:reload"
after "apache:update_config", "apache:reload"
