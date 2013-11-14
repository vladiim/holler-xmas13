require 'rspec/autorun'
require 'rspec/mocks'
require 'ostruct'
require 'rr'
require 'capybara'

# RSpec::Core::Configuration.new.tap do |config|
RSpec.configure do |config|
  config.mock_with :rr
end