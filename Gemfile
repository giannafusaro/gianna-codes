source 'http://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.1.0'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', git: 'https://github.com/cowboyd/therubyracer.git'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'
gem 'inline_svg'
gem 'mysql2', '~> 0.3.20'
gem 'bourbon', '~> 4.2.7'
gem 'pry'
gem 'redcarpet'
gem 'json', github: 'flori/json', branch: 'v1.8'
gem 'redis', '~> 3.0'
gem 'sidekiq'
gem 'ffi', '1.9.18'

group :production do
  # Use Unicorn as the app server
  gem 'unicorn'
end


# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem "capistrano", "~> 3.4.1"
  gem "capistrano-rails"
  gem "capistrano-rbenv"
  gem "capistrano-unicorn-nginx"
  gem 'puma'
end
