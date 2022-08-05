source 'https://rubygems.org'

ruby '2.7.4'

gem 'rails', '~> 6.1'
gem 'soup', '~> 1.0'
gem 'kramdown', '~> 2.4'
gem 'aws-sdk-s3', '~> 1.103'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'puma', '~> 5'
gem 'rollbar'
gem 'ims-lti', git: 'https://github.com/futurelearn/ims-lti', branch: 'sj-remove-query-params-from-launch-params'
gem 'mail'

group :assets, :development do
  gem 'sass-rails', '~> 6.0'
end

group :development do
  gem 'dotenv-rails', '~> 2.8'
  gem 'listen', '>= 3.0.5', '< 3.8'
  gem 'tinify'
end

group :development, :test do
  gem 'capybara', '~> 3.37'
  gem 'rails-controller-testing', '~> 1.0'
  gem 'rspec-rails', '~> 5.1'
  gem 'timecop'
end
