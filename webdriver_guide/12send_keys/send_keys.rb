#encoding:utf-8
require 'selenium-webdriver'

file_path = 'file:///' + File.expand_path(File.join('.', 'send_keys.html'))
dr = Selenium::WebDriver.for :chrome

dr.get file_path

# copy content of A
a = dr.find_element(:id, 'A')
a.send_keys([:control, 'a'])
a.send_keys([:control, 'c'])
sleep 1

# paste to B
b = dr.find_element(:id, 'B')
b.send_keys([:control, 'v'])
sleep 2
# clear A and write something else
a.clear()
a.send_keys('watir','-','webdriver', :space, 'is', 'better', '!')
sleep 1
puts a.text

sleep 2
dr.quit()