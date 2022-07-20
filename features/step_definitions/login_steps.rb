
Given /^i open the Website in a browser$/ do
  sleep(4)
  @driver.navigate.to "https://newtours.herokuapp.com/"
  #@Browser.manage.timeouts.implicit_waits = 10
end

And /^i login with credentials (.*) and (.*)$/ do |user,pwd|
  homepage=Homepage.new(@driver)
  homepage.login(user,pwd)
  end
And /^i login with credentials using record (.*)$/ do |record|
  homepage=Homepage.new(@driver)
  homepage.login_with_record_details(record)
end

Then /^Flight Finder page is displayed$/ do
  homepage=Homepage.new(@driver)
  homepage.wait_for_find_flights_page
end

