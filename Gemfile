source 'https://rubygems.org'

ruby '2.5.8'

gem 'rails', '~> 5'
gem 'soup', '~> 1'
gem 'kramdown', '~> 2'
gem 'aws-sdk-s3', '~> 1'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'puma', '~> 5'
gem 'recaptcha', '~> 5'
gem 'rollbar'

group :assets, :development do
  gem 'sass-rails', '~> 5'
end

group :development do
  gem 'dotenv-rails', '~> 2'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'tinify'
end

group :development, :test do
  gem 'capybara', '~> 3'
  gem 'rails-controller-testing', '~> 1'
  gem 'rspec-rails', '~> 3'
  gem 'timecop'
end
