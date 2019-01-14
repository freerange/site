source 'https://rubygems.org'

ruby '2.4.5'

gem 'rails', '~> 5.2.2'
gem 'soup'
gem 'kramdown'
gem 'airbrake', '~> 5'
gem 'aws-sdk-s3'
gem 'bootsnap', '>= 1.1.0', require: false

group :assets, :development do
  gem 'sass-rails'
end

group :assets do
  gem 'uglifier', '>= 1.3.0'
  gem 'mini_racer'
end

group :development do
  gem 'dotenv-rails'
  gem 'recap'
  gem 'timecop'
  gem 'listen', '>= 3.0.5', '< 3.2'
end

group :development, :test do
  gem 'rspec-rails'
end
