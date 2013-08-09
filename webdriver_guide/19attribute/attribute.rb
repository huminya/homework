#encoding:utf-8
require 'selenium-webdriver'
file_path = 'file:///' + File.expand_path(File.join('.', 'attribute.html'))

dr = Selenium::WebDriver.for :chrome
dr.get file_path

link = dr.find_element(:id, 'tooltip')

puts link.attribute('data-original-title')
puts link.attribute(:id)
puts link.attribute(:name)
puts link.attribute(:href)

puts link.text()

sleep 1

dr.quit()