source 'https://rubygems.org'

ruby '2.2.5'

gem 'rails'
gem 'soup'
gem 'kramdown'
gem 'airbrake', '~> 5'

group :assets, :development do
  gem 'less-rails', git: 'https://github.com/brendon/less-rails', branch: 'fix-sprockets-loading'
  # See https://github.com/rails/execjs#readme for more supported runtimes
  gem 'therubyracer', platforms: :ruby
end

group :assets do
  # Use Uglifier as compressor for JavaScript assets
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
