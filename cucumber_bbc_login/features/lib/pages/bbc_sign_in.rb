require 'capybara/dsl'

class BbcSignIn
  include Capybara::DSL

  attr_accessor :email_error, :password_error, :password_letter_error, :password_number_error, :password_long_error, :invalid_email_error, :email_short_error

  # Page Objects
  EMAIL_FIELD = 'user-identifier-input'.freeze
  PASSWORD_FIELD = 'password-input'.freeze
  SIGN_IN_BUTTON = 'submit-button'.freeze
  EMAIL_ERROR_MESSAGE = 'form-message-username'.freeze
  PASSWORD_ERROR_MESSAGE = 'form-message-password'.freeze

  def initialize
    @email_error = 'Sorry, we can’t find an account with that email. You can register for a new account or get help here.'
    @password_error = 'Sorry, that password is too short. It needs to be eight characters or more.'
    @password_letter_error = "Sorry, that password isn't valid. Please include something that isn't a letter."
    @password_number_error = "Sorry, that password isn't valid. Please include a letter."
    @password_long_error = "Sorry, that password is too long. It can't be more than 50 characters."
    @invalid_email_error = "Sorry, we can’t find an account with that username. If you're over 13, try your email address instead or get help here."
    @email_short_error = "Sorry, that username's too short. It needs to be at least two characters."
  end

  def fill_in_email(email)
    fill_in(EMAIL_FIELD, with: email)
  end

  def fill_in_password(password)
    fill_in(PASSWORD_FIELD, with: password)
  end

  def click_login_in
    click_button(SIGN_IN_BUTTON)
  end

  def find_email_error_message
    find(:id, EMAIL_ERROR_MESSAGE).text
  end

  def find_password_error_message
    find(:id, PASSWORD_ERROR_MESSAGE).text
  end
end
