#encoding:utf-8
require 'selenium-webdriver'
Selenium::WebDriver::Firefox::Binary.path = "C:\\Program Files (x86)\\Mozilla Firefox\\firefox.exe"
# dr = Selenium::WebDriver.for :chrome
dr = Selenium::WebDriver.for :ff

url = 'http://www.163.com'

dr.get url

puts "title of the current page is #{dr.title}"
puts "url of the current page is #{dr.current_url}"

sleep 2
dr.quit()