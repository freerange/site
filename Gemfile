source 'https://rubygems.org'

ruby '2.5.8'

gem 'rails', '~> 6.0'
gem 'soup', '~> 1.0'
gem 'kramdown', '~> 2.3'
gem 'aws-sdk-s3', '~> 1.84'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'puma', '~> 5'
gem 'rollbar'

group :assets, :development do
  gem 'sass-rails', '~> 6.0'
end

group :development do
  gem 'dotenv-rails', '~> 2.7'
  gem 'listen', '>= 3.0.5', '< 3.4'
  gem 'tinify'
end

group :development, :test do
  gem 'capybara', '~> 3.33'
  gem 'rails-controller-testing', '~> 1.0'
  gem 'rspec-rails', '~> 4.0'
  gem 'timecop'
end
