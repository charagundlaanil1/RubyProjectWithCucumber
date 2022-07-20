require 'selenium-webdriver'
class Homepage
  def initialize (driver)
    @driver=driver
  end
  def login(username_value,password_value)
    username=@driver.find_element(:name,'userName')
    username.send_keys(username_value)
    password=@driver.find_element(:name,'password')
    password.send_keys(password_value)
    sign_in_btn=@driver.find_element(:name,'login')
    sign_in_btn.click
  end
  def login_with_record(record)
    data_record=YAML.load(File.read("C:/Users/santh/RubymineProjects/Cucumberseleniumproject/features/Data/record.yaml"))
    username_value =data_record["#{record}"]['username']
    password_value =data_record["#{record}"]['password']
    username=@driver.find_element(:name,'userName')
    username.send_keys(username_value)
    password=@driver.find_element(:name,'password')
    password.send_keys(password_value)
    sign_in_btn=@driver.find_element(:name,'login')
    sign_in_btn.click
  end
  def wait_for_find_flights_page
    wait =Selenium::WebDriver::Wait.new(:timeout =>10)
    wait.until{@driver.find_element(:name,'findFlights').displayed? }
    if @driver.find_element(:name,'findFlights').displayed?
      puts "Test Case passed"
    else
      @driver.save_screenshot('Screenshots/error.png')
      raise "FindFlights not displayed "
    end
  end
end