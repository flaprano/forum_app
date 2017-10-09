source 'https://rubygems.org'

ruby '2.4.2'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'kaminari-actionview'
gem 'kaminari-mongoid'
gem 'mongoid', '~> 6.1.0'
gem 'glebtv-mongoid_nested_set'
gem 'passenger', '>= 5.0.25', require: 'phusion_passenger/rack_handler'
gem 'rails', '~> 5.1.4'
gem 'sass-rails', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'byebug'
  gem 'byebug-passenger'
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'rspec-rails', '~> 3.6'
  gem 'rubocop', '~> 0.50.0', require: false
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'simplecov', require: false
end
