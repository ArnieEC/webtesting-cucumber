require 'capybara/dsl'

class BbcSignIn
  include Capybara::DSL

  # Page Objects
  EMAIL_FIELD = 'user-identifier-input'.freeze
  PASSWORD_FIELD = 'password-input'.freeze

  def fill_in_email(email)
    fill_in(EMAIL_FIELD, with: email)
  end

  def fill_in_password(password)
    fill_in(PASSWORD_FIELD, with: password)
  end
end