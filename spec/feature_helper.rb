require 'rails_helper'
require 'rubygems'
require 'capybara/poltergeist'
require 'rack_session_access/capybara'

Dir[Rails.root.join('spec/features/support/*.rb')].each { |f| require f }

Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app, timeout: 60, debug: false, js_errors: false, logger: nil, phantomjs_options: [ '--load-images=no', '--ignore-ssl-errors=yes' ])
end

Capybara.default_selector = :css
Capybara.javascript_driver = :poltergeist
