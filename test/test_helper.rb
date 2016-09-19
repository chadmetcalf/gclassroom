ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'json_api_request_helpers.rb'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
end

class ActionDispatch::Integration::Session
  # Add more helper methods to be used by all tests here...
  prepend JSONApi::RequestHelpers
end
