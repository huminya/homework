#encoding: utf-8
require 'watir-webdriver'

dr = Watir::Browser.new :chrome
file_path = 'file:///' + File.expand_path(File.join('.', 'checkbox.html'))

dr.goto file_path

# select all checkbox and click it
# dr.find_elements(:css, 'input[type = "checkbox"]').each {|c| c.click}
dr.checkboxes.each {|c| c.set(true)}
sleep 2
# dr.navigate.refresh()
dr.refresh
sleep 1

# show the amount of checkbox
# cbnum = dr.find_elements(:css, 'input[type = "checkbox"]').size
cbnum = dr.checkboxes.size
puts "there are #{cbnum} checkbox in this page."

# select all input, then filter the checkbox within it and click
# dr.find_elements(:tag_name, 'input').each do |input|
# watir-webdriver not need do so, or same as upon coding
	# input.click if input.attribute(:type) =='checkbox'
# end
# sleep 2

# find the last checkbox and click it to unselect it
# dr.find_elements(:css, 'input[type = "checkbox"]').last.click
dr.checkboxes.last.click

sleep 2
# dr.quit()
dr.close()