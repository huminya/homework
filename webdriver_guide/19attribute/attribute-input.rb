#encoding:utf-8
require 'selenium-webdriver'
file_path = 'file:///' + File.expand_path(File.join('.', 'input.html'))

dr = Selenium::WebDriver.for :chrome
dr.get file_path

input = dr.find_element(:id, 'the_user')
btn = dr.find_element(:css, 'input[type="submit"]')

puts input.attribute(:id)
puts input.attribute(:name)
puts input.attribute(:type)
puts btn.attribute(:value)

input.send_keys('abc')
sleep 1
puts input.attribute(:value)

sleep 1

dr.quit()