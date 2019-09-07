source 'https://rubygems.org'

ruby '2.5.6'

gem 'rails', '~> 5'
gem 'soup', '~> 1'
gem 'kramdown', '~> 1'
gem 'airbrake', '~> 5'
gem 'aws-sdk-s3', '~> 1'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'puma', '~> 3'
gem 'recaptcha', '~> 4'
gem 'jquery-rails'

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
