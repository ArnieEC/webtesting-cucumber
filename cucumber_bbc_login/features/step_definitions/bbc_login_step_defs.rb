Given("I access the BBC login page") do
  @bbc_site = BbcSite.new
  @bbc_site.bbc_homepage.visit_homepage
  @bbc_site.bbc_homepage.click_sign_in
end

Given("I input incorrect username details") do
  @bbc_site.bbc_sign_in.fill_in_email('apple1986@banana.com')
end

Given("I input incorrect password details") do
  @bbc_site.bbc_sign_in.fill_in_password('Password112324231413')
end

When("I try to login") do
  @bbc_site.bbc_sign_in.click_login_in
end

Then("I recieve an error for not finding the account") do
  expect(@bbc_site.bbc_sign_in.find_email_error_message).to eq @bbc_site.bbc_sign_in.email_error
end

Given("I input short password details") do
  @bbc_site.bbc_sign_in.fill_in_password('p3!')
end

Then("I recieve an error for my password being too short") do
  expect(@bbc_site.bbc_sign_in.find_email_error_message).to eq @bbc_site.bbc_sign_in.password_error
end

Given("I input only letters for the password details") do
  @bbc_site.bbc_sign_in.fill_in_password('Password')
end

Then("I recieve an error for my password being only letters") do
  expect(@bbc_site.bbc_sign_in.find_email_error_message).to eq @bbc_site.bbc_sign_in.password_letter_error
end

Given("I input only numbers for the password details") do
  @bbc_site.bbc_sign_in.fill_in_password('12343252')
end

Then("I recieve an error for my password being only numbers") do
  expect(@bbc_site.bbc_sign_in.find_email_error_message).to eq @bbc_site.bbc_sign_in.password_number_error
end