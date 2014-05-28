source 'https://rubygems.org'
ruby '2.1.1'
gem 'rails', '4.1.1'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0',          group: :doc
gem 'spring',        group: :development
gem 'bootstrap-sass'
gem 'devise'
gem 'devise-async'
gem 'mysql2'
gem 'pundit'
gem 'sendgrid'
gem 'simple_form'
gem 'omniauth-github'
gem 'omniauth-google-oauth2', '0.2.2'
gem 'omniauth-facebook'
gem 'psych'
gem 'redis'
gem 'redis-rails'
gem "resque", require: "resque/server"
gem 'resque-scheduler', :require => 'resque_scheduler/server'
gem 'rack-cache'
gem 'will_paginate', '~> 3.0.5'
gem 'bootstrap-will_paginate'
gem 'twitter-bootstrap-rails'
gem 'paperclip', github: 'thoughtbot/paperclip'
gem 'geocoder'
gem 'foreman'
gem 'pg'
gem 'aws-sdk'

gem 'rails_12factor', group: :production

group :development do
  gem 'rails_apps_testing'
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_21]
  gem 'capistrano', '~> 3.0.1'
  gem 'capistrano-bundler'
  gem 'capistrano-rails', '~> 1.1.0'
  gem 'capistrano-rails-console'
  gem 'capistrano-rvm', '~> 0.1.1'
  gem 'guard-bundler'
  gem 'guard-rails'
  gem 'guard-rspec'
  gem 'quiet_assets'
  gem 'rails_layout'
  gem 'rb-fchange', :require=>false
  gem 'rb-fsevent', :require=>false
  gem 'rb-inotify', :require=>false
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails', '>= 3.0.0.beta2'
  gem 'byebug'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'faker'
  gem 'launchy'
  gem 'selenium-webdriver'
  gem 'vcr'
  gem 'webmock'
  gem "shoulda-matchers"
end
