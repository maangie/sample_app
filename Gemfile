source 'https://rubygems.org'
ruby '2.1.4'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.7'

gem 'bootstrap-sass'

group :development, :test do
  gem 'sqlite3' # Use sqlite3 as the database for Active Record
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'pry-rails'
end

group :test do
  gem 'selenium-webdriver'
  gem 'capybara'
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
end

gem 'sass-rails', '~> 4.0.3' # Use SCSS for stylesheets

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer',  platforms: :ruby

gem 'jquery-rails' # Use jquery as the JavaScript library

# Turbolinks makes following links in your web application
# faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', '~> 0.4.0', require: false
end

# Spring speeds up development by keeping your application running in
# the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

gem 'bcrypt', '~> 3.1.7' # Use ActiveModel has_secure_password

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

# https://github.com/seyhunak/twitter-bootstrap-rails
gem 'less-rails'
gem 'twitter-bootstrap-rails'
