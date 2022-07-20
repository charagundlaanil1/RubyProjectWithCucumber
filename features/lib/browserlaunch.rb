require 'selenium-webdriver'
Selenium::WebDriver::Chrome::Service.driver_path =("Driver/chromedriver.exe")
@Before
def hitting_the_browser
  @driver = Selenium::WebDriver.for :chrome
  @driver.manage.window.maximize
end

@After
def closing_the_browser
  @driver.quit
  end