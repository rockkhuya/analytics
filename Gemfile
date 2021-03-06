source 'https://rubygems.org'

gem 'rails', '4.1.0'

# Servers
gem 'puma'
gem 'pg'
gem 'newrelic_rpm'
gem 'therubyracer'

gem 'rmagick'
gem 'settingslogic'

# gem 'google-analytics-rails'
gem 'haml'

# Facebook API
gem 'fb_graph'

gem "rails_admin"
gem 'devise'
gem 'cancancan'
gem 'rolify'
gem "breadcrumbs_on_rails"

# Assets
gem 'autoprefixer-rails'
gem 'coffee-rails', '~> 4.0.0'
gem 'haml_assets'
gem 'i18n-js'
gem 'jquery-rails'
gem 'jquery-turbolinks'
gem 'sass-rails', '~> 4.0.3'
gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
gem 'turbolinks'
gem 'twitter-bootswatch-rails', '~> 3.1.1'
gem 'twitter-bootswatch-rails-helpers'
gem 'uglifier', '>= 1.3.0'
gem 'cocoon'
gem 'simple_form', '~> 3.1.0.rc1'
gem 'kaminari'

group :development, :test do
  gem 'byebug'
  gem 'delorean'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'pry'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'quiet_assets'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'bullet'
  gem 'meta_request'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'rename'
  gem "awesome_print"
end

group :test do
  gem 'capybara'
  gem 'coveralls', require: false
  gem 'database_cleaner'
  gem 'email_spec'
  gem 'rspec'
  gem 'rspec-rails'
  gem 'selenium-webdriver'
  gem 'simplecov', require: false
  gem 'webmock', require: false
end

group :staging, :production do
  #gem 'puma_auto_tune'
  gem 'rack-timeout'
  gem 'rails_12factor'
end
