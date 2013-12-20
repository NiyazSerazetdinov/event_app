source 'https://rubygems.org'

ruby '2.0.0'
gem 'rails', '4.0.2'
gem 'bootstrap-sass'
gem 'will_paginate', '3.0.3'
gem 'bootstrap-will_paginate', '0.0.6'


group :assets do
  gem 'sass-rails',   '~> 4.0.1'
  gem 'coffee-rails', '~> 4.0.1'
  gem 'uglifier', '>= 2.3.2'
end

gem 'jquery-rails'
gem "devise", ">= 3.2.2"
gem "figaro", ">= 0.5.3"
gem 'protected_attributes'

group :development, :test do
  gem 'sqlite3'
  gem "rspec-rails", ">= 2.14.0"
  gem "factory_girl_rails", ">= 4.3.0"
end

group :development do
  gem "quiet_assets", ">= 1.0.1"
  gem "better_errors", ">= 0.3.2"
  gem "binding_of_caller", ">= 0.6.8" 
end

group :test do
  gem "email_spec", ">= 1.4.0"
  gem "launchy", ">= 2.4.2"
  gem "capybara", ">= 2.2.0"
  gem "cucumber-rails", ">= 1.4.0", :require => false
  gem 'database_cleaner'
end

group :production do
  gem 'thin'
  gem 'rails_12factor'
end
