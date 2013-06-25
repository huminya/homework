require 'selenium-webdriver'

dr = Selenium::WebDriver.for :chrome
sleep 2
dr.navigate.to 'http://sports.sina.com.cn'
sleep 5
puts 'maximize browser'
dr.manage.window.maximize()
puts 'resize browser'
dr.manage.window.resize_to(800,600)
sleep 5
dr.get 'http://localhost:8808'


puts 'close browser'
dr.quit