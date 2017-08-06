source 'https://rubygems.org'

ruby '2.2.5'

gem 'rails'
gem 'soup'
gem 'kramdown'
gem 'airbrake', '~> 5'

group :assets, :development do
  gem 'less-rails', git: 'https://github.com/brendon/less-rails', branch: 'fix-sprockets-loading'
  gem 'therubyracer', platforms: :ruby
end

group :assets do
  gem 'uglifier', '>= 1.3.0'
  gem 'yui-compressor'
end

group :development do
  gem 'dotenv-rails'
  gem 'recap'
  gem 'timecop'
end

group :development, :test do
  gem 'rspec-rails'
end
