require 'selenium-webdriver'
require 'pry'
Selenium::WebDriver::Chrome::Service.driver_path= "/home/user/Documents/selenium/browser/chromedriver"
options = Selenium::WebDriver::Chrome::Options.new(args: ['--disable-notifications'])
driver=Selenium::WebDriver.for(:chrome, options: options)
driver.manage.timeouts.implicit_wait = 20
driver.manage.window.maximize
driver.get("https://redbus.com")
driver.save_screenshot("./test1.png")