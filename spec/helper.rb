require File.expand_path('spec/helper_lite')
require File.expand_path('app')

ENV["RACK_ENV"] = "test"

RSpec.configure do |config|
  config.include Capybara::DSL
end

Capybara.app = Sinatra::Application