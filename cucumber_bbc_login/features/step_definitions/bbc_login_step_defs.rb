Given("I access the BBC login page") do
  @bbc_site = BbcSite.new
  @bbc_site.bbc_homepage.visit_homepage
  @bbc_site.bbc_homepage.click_sign_in
  sleep 5
end

Given("I input incorrect username details") do
  @bbc_site.bbc_sign_in.fill_in_email('apple1986@banana.com')
  sleep 5
end

Given("I input incorrect password details") do
  @bbc_site.bbc_sign_in.fill_in_password('Password1')
end

When("I try to login") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I recieve an error for not finding the account") do
  pending # Write code here that turns the phrase above into concrete actions
end