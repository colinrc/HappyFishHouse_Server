source 'https://rubygems.org'


gem 'rails'
gem 'pg'
gem 'sass-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
gem 'jquery-turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', group: :doc

# Use ActiveModel has_secure_password
gem 'bcrypt'
gem 'devise'
gem 'bootstrap-sass'
# stuff for OmniAuth ... later
#gem 'therubyracer'
#gem 'omniauth'
#gem 'omniauth-facebook'
#gem 'omniauth-twitter'
#gem 'omniauth-google'


#gem 'factory-girl'
#gem 'rspec-integration'
#gem 'shoulda-matchers'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'spring-commands-rspec', group: :development

group :development,:test do
  gem 'rspec-rails', '~> 3.5'
  gem 'factory_girl_rails'
  gem 'rspec-activemodel-mocks'
  gem 'shoulda-matchers'
  gem 'faker'end

group :development do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :test do
  gem 'capybara'
  gem 'guard-rspec', require: false
  gem 'launchy'

end
