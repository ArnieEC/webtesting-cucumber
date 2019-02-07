require 'capybara/dsl'

class BbcHomepage
  include Capybara::DSL

  # Page Objects
  HOMEPAGE_URL = 'https://www.bbc.co.uk'.freeze
  SIGN_IN_BUTTON = 'idcta-link'.freeze

  def visit_homepage
    visit(HOMEPAGE_URL)
  end

  def click_sign_in
    click_link(SIGN_IN_BUTTON)
  end
end