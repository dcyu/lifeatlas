ruby "3.2.2"

source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 7.1.0'
# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.6', groups: [:development, :test]
# Use SCSS for stylesheets
gem 'sassc-rails', '~> 2.1'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 4.2.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails', '~> 4.5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.11'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 2.4',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring

group :development, :test do
  gem 'spring'
  # gem 'quiet_assets' # removed, not compatible with Rails 7
  gem 'binding_of_caller'
  gem 'meta_request'
  gem 'rspec-rails', '~> 6.1'
  gem 'factory_bot_rails', '~> 6.4'
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'listen', '~> 3.3'
end

group :test do
  gem 'faker', '~> 3.2'
  gem 'capybara', '~> 3.39'
  gem 'database_cleaner-active_record', '~> 2.0'
  gem 'launchy', '~> 2.5'
  gem 'selenium-webdriver', '~> 4.10'
  gem 'webdrivers', '~> 5.3'
  gem 'shoulda-matchers', '~> 5.0'
end

group :production do
  gem 'rails_12factor'
end

gem 'pg', '~> 1.5'

gem 'haml'
gem 'haml-rails', '~> 2.1'

gem 'figaro', '~> 1.2.0'

gem "geocoder", '~> 1.8'

gem 'devise', '~> 4.9'

gem 'bootstrap-glyphicons'

gem 'google_places', '~> 0.32'

gem 'aws-sdk', '~> 3'

gem "google_visualr", '~> 2.5'

gem 'oauth2', '~> 2.0'
# gem 'google_contacts_api'

gem 'twitter', '~> 7.0'
gem 'words_counted', '~> 1.0'

gem 'httparty', '< 0.14.1'

gem "koala", '~> 3.0'

# Use Active Storage instead of Paperclip (Rails 7 recommendation)
# gem "paperclip", '~> 6.1'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

gem 'puma', '~> 6.4'

gem 'coffee-script'

