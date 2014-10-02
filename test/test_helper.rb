ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/rails'
require 'minitest/pride'
require 'minitest/rails/capybara'

module ActiveSupport
  class TestCase
    fixtures :all
    include Capybara::DSL
  end
end

def sign_in(user)
  visit new_user_session_path
  fill_in 'Email', with: users(user).email
  fill_in 'Password', with: 'password'
  click_on 'Log in'
end
