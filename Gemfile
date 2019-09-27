source 'https://rubygems.org'

ruby '2.5.6'

gem 'rails', '~> 5'
gem 'soup', '~> 1'
gem 'kramdown', '~> 1'
gem 'airbrake', '~> 5'
gem 'aws-sdk-s3', '~> 1'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'puma', '~> 4'
gem 'recaptcha', '~> 4'
gem 'jquery-rails', '~> 4'

group :assets, :development do
  gem 'sass-rails', '~> 5'
end

group :assets do
  gem 'uglifier', '~> 3'
  gem 'mini_racer'
end

group :development do
  gem 'dotenv-rails', '~> 2'
  gem 'listen', '>= 3.0.5', '< 3.2'
end

group :development, :test do
  gem 'capybara', '~> 3'
  gem 'rails-controller-testing', '~> 1'
  gem 'rspec-rails', '~> 3'
  gem 'timecop'
end
