require 'selenium-webdriver'
require 'pry'
Selenium::WebDriver::Chrome::Service.driver_path= "/home/user/Documents/selenium/browser/chromedriver"
driver = Selenium::WebDriver.for :chrome
driver.manage.timeouts.implicit_wait = 20
driver.manage.window.maximize
driver.get("https://jqueryui.com/draggable/")
sleep(2)
driver.switch_to.frame driver.find_element(:class, 'demo-frame')
drag = driver.find_element(:id, "draggable")
driver.action.drag_and_drop_by(drag, 100, 50).perform
sleep(15)
# driver.find_element(:css, '._2AkmmA._29YdH8').click
# driver.find_element(:xpath,"//input[contains(@class,'LM')]").send_keys("mobile", :enter)
# driver.find_element(:xpath,"//div[@class='_1HmYoV _35HD7C'][2]/div[contains(@class, 'bhgxx')][2]//a").click
# windowhandles = driver.window_handles
# driver.switch_to.window windowhandles[1]
# driver.find_element(:xpath,"(//li[@class='col col-6-12'])[2]//button").click
# sleep(4)
# driver.find_element(:xpath,"//input[@type='text']").send_keys("test")
# sleep(5)
# driver.find_element(:xpath,"//button[@class='_2AkmmA _1poQZq _7UHT_c']").click
# driver.find_element(:xpath,"//input[@type='password']").send_keys("test")
# driver.find_element(:xpath,"//button[contains(@class,'AkmmA ')]").click
# slepp(5)
# driver.find_element(:xpath,"//button[contains(@class,'AkmmA ')]").click
# driver.find_element(:xpath,"//button[contains(@class,'AkmmA ')]").click
