source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails'
gem 'sqlite3'
gem 'puma'
gem 'haml-rails'
gem 'sass-rails'
gem 'jquery-rails'
gem 'bootstrap'
gem 'uglifier'
gem 'coffee-rails'
gem 'turbolinks'
gem 'jbuilder'
# gem 'redis' # Use Redis adapter to run Action Cable in production
# gem 'bcrypt' # Use ActiveModel has_secure_password

gem 'devise'

group :development, :test do
  gem 'byebug'
  gem 'rspec-rails'
  gem 'capybara'
  gem 'selenium-webdriver'
end

group :test do
  gem 'cucumber-rails'
  gem 'database_cleaner'
end

group :development do
  gem 'web-console'
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
end

