source 'https://rubygems.org'

ruby '2.5.3'

gem 'rails', '~> 5.2.2'
gem 'soup'
gem 'kramdown'
gem 'airbrake', '~> 5'
gem 'aws-sdk-s3'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'puma', '~> 3.11'

group :assets, :development do
  gem 'sass-rails'
end

group :assets do
  gem 'uglifier', '>= 1.3.0'
  gem 'mini_racer'
end

group :development do
  gem 'dotenv-rails'
  gem 'listen', '>= 3.0.5', '< 3.2'
end

group :development, :test do
  gem 'capybara'
  gem 'rails-controller-testing'
  gem 'rspec-rails'
  gem 'timecop'
end
