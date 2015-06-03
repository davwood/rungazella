source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.8'

# Use postgresql as the database for Active Record
gem 'pg'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.2'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails', '~> 3.1.0'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :development, :test do
  gem 'rspec-rails', '~> 3.0.0.beta'
  gem 'capybara'
  gem "better_errors"
  gem "binding_of_caller"
  gem 'dotenv', '~> 0.11.1'
end

group :development do
  gem 'capistrano-rails'
  gem 'capistrano-rvm'
  gem 'capistrano3-unicorn'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]



gem 'spree', github: 'spree/spree', branch: '2-2-stable'
gem 'spree_gateway', :git => 'https://github.com/spree/spree_gateway.git', :branch => '2-2-stable'
gem 'spree_auth_devise', :git => 'https://github.com/spree/spree_auth_devise.git', :branch => '2-2-stable'

gem 'spree_bootstrap_frontend', github: '200Creative/spree_bootstrap_frontend', branch: '2-2-stable'

#this is for the blog
gem 'spree_blogging_spree', github: 'stefansenk/spree-blogging-spree', :branch => '2-2-stable'
# this is to edit the text in the blog
gem 'spree_editor', github: 'spree/spree_editor', :branch => '2-2-stable'

gem 'spree_print_invoice' , :git => 'git://github.com/spree/spree_print_invoice.git', :branch => '2-2-stable'

gem 'spree_product_zoom', :git => 'git://github.com/spree/spree_product_zoom.git', :branch => '2-2-stable'

gem 'sitemap_generator', github: "davwood/sitemap_generator"

ruby "2.2.1"
