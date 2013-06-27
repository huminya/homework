require 'selenium-webdriver'

dr = Selenium::WebDriver.for :chrome
sleep 2
dr.get 'http://www.baidu.com'
sleep 5
puts 'maximize browser'
dr.manage.window.maximize()
sleep 2
puts 'close browser'
dr.quit