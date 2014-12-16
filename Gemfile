ruby "2.1.2"

source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0.rc2'

gem 'sass-rails'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# For GitHub OAuth
gem 'omniauth'
gem 'omniauth-github'
gem 'figaro'

# stlying and jquery
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem "nested_form"
gem "bootstrap-sass"

# Icons
gem "font-awesome-rails"

# Charts
gem "chartkick"

group :test, :development do
  gem "rspec-rails"
  gem "capybara"
  gem "selenium-webdriver"
  gem "better_errors"
  gem "sprockets_better_errors"
  gem "binding_of_caller"
  gem "factory_girl_rails"
  gem "simplecov"
  gem "database_cleaner"
  gem "sqlite3"
  gem "pry"
  gem "guard-rspec", require: false
  gem "thin"
end

group :production do
  gem "pg"
  gem "google-analytics-rails"
  gem "rails_12factor"
end