source 'https://rubygems.org'

ruby '2.3.3'

gem 'rails', '~> 5.0.0'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

gem 'bootstrap', '~> 4.0.0.alpha3'
gem 'font-awesome-sass'
gem 'omniauth-facebook'
gem 'dotenv-rails'
gem 'redis'
gem 'factory_girl_rails'
gem 'faker'

# Maps
gem 'geocoder'
gem 'geokit'

source 'https://rails-assets.org' do
  gem 'rails-assets-tether'
  gem 'rails-assets-SoundJS'
end


group :development, :test do
  gem 'rspec'
  gem 'rspec-rails'
  gem 'shoulda-matchers', require: false
  gem 'rspec-activemodel-mocks'
  gem 'guard-rspec'
  gem 'poltergeist'
  # gem 'spring'
  # gem 'json'
end

group :development do
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  #gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'better_errors'
  gem 'binding_of_caller', platforms: :mri
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :test do
  gem 'capybara', github: 'jnicklas/capybara'
  gem 'database_cleaner'
  #gem 'spring-commands-rspec'
  gem 'rspec-retry'
  gem 'rack_session_access'
  gem 'rspec-its'
end
