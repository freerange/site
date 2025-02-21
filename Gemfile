source 'https://rubygems.org'

ruby file: '.ruby-version'

gem 'rails', '~> 7.0.0'
gem 'soup', '~> 1.0'
gem 'kramdown', '~> 2.5'
gem 'aws-sdk-s3', '~> 1.182'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'puma', '~> 6'
gem 'rollbar'
gem 'mutex_m'
gem 'bigdecimal'
gem 'drb'
gem 'logger'
gem 'benchmark'

group :assets, :development do
  gem 'sass-rails', '~> 6.0'
end

group :development do
  gem 'dotenv', '~> 3.1'
  gem 'irb'
  gem 'listen', '>= 3.0.5', '< 3.10'
  gem 'tinify'
end

group :development, :test do
  gem 'capybara', '~> 3.40'
  gem 'rails-controller-testing', '~> 1.0'
  gem 'rspec-rails', '~> 7.1'
  gem 'timecop'
end
