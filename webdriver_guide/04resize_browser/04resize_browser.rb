require 'selenium-webdriver'

dr = Selenium::WebDriver.for :ff
dr.get 'http://www.baidu.com'
sleep 2

dr.manage.window.resize_to(800,600)

sleep 5

puts 'close browser'
dr.quit()