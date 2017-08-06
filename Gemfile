source 'https://rubygems.org'

ruby '2.2.5'

gem 'rails'
gem 'soup'
gem 'kramdown'
gem 'airbrake', '~> 5'

gem 'less-rails', git: 'https://github.com/brendon/less-rails', branch: 'fix-sprockets-loading'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

group :development do
  gem 'dotenv-rails'
  gem 'recap'
  gem 'timecop'
end

group :development, :test do
  gem 'rspec-rails'
end
