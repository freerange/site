require 'io/console'

namespace :shortener do
  namespace :users do
    desc 'Create a user for the URL Shortener app'
    task :create, [:email] => :environment do |_, args|
      print 'Enter your password: '
      password = STDIN.noecho(&:gets).chomp
      puts

      Shortener::User.create!(email: args[:email], password:)
    end

    desc 'List users for the URL Shortener app'
    task :list => :environment do
      Shortener::User.find_each do |user|
        puts user.email
      end
    end
  end
end
