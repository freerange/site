source 'https://rubygems.org'

ruby '3.1.2'

gem 'rails', '~> 7.0'
gem 'soup', '~> 1.0'
gem 'kramdown', '~> 2.4'
gem 'aws-sdk-s3', '~> 1.141'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'puma', '~> 6'
gem 'rollbar'

group :assets, :development do
  gem 'sass-rails', '~> 6.0'
end

group :development do
  gem 'dotenv-rails', '~> 2.8'
  gem 'listen', '>= 3.0.5', '< 3.9'
  gem 'tinify'
end

group :development, :test do
  gem 'capybara', '~> 3.39'
  gem 'rails-controller-testing', '~> 1.0'
  gem 'rspec-rails', '~> 6.0'
  gem 'timecop'
end
