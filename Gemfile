source 'https://rubygems.org'

ruby '2.6.6'

gem 'rails', '~> 6.1'
gem 'soup', '~> 1.0'
gem 'kramdown', '~> 2.3'
gem 'aws-sdk-s3', '~> 1.100'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'puma', '~> 5'
gem 'rollbar'

group :assets, :development do
  gem 'sass-rails', '~> 6.0'
end

group :development do
  gem 'dotenv-rails', '~> 2.7'
  gem 'listen', '>= 3.0.5', '< 3.8'
  gem 'tinify'
end

group :development, :test do
  gem 'capybara', '~> 3.35'
  gem 'rails-controller-testing', '~> 1.0'
  gem 'rspec-rails', '~> 5.0'
  gem 'timecop'
end
