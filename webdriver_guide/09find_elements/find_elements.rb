#encoding: utf-8
require 'selenium-webdriver'

dr = Selenium::WebDriver.for :chrome
file_path = 'file:///' + File.expand_path(File.join('.', 'checkbox.html'))

dr.get file_path

# select all checkbox and click it
dr.find_elements(:css, 'input[type = "checkbox"]').each {|c| c.click}
sleep 2
dr.navigate.refresh()
sleep 1

# show the amount of checkbox
cbnum = dr.find_elements(:css, 'input[type = "checkbox"]').size
puts "there are #{cbnum} checkbox in this page."

# select all input, then filter the checkbox within it and click
dr.find_elements(:tag_name, 'input').each do |input|
	input.click if input.attribute(:type) =='checkbox'
end
sleep 2

# find the last checkbox and click it to unselect it
dr.find_elements(:css, 'input[type = "checkbox"]').last.click

sleep 2
dr.quit()