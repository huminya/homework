#encoding:utf-8

require 'selenium-webdriver'
dr = Selenium::WebDriver.for :chrome
url = 'http://www.soso.com'

qq_page = dr.get url

puts dr.current_url
puts dr.title

# m = dr.find_elements(:css, 'input[type = "text"]').size
# m = dr.find_element(:name, 'w')
m = dr.find_element(:id, 's_input')
# p m
m.send_keys('watir webdriver')
# puts "there are #{m} textfields."
puts m.text
b = dr.find_element(:id, 's_button')
b.click

# get all handles
hs = dr.window_handles
# current handles
ch = dr.window_handle
puts hs
puts ch

#goto new window
hs.each do |h|
	unless h == ch
		dr.switch_to.window(h)
	end
end
sleep 2
result_div = dr.find_element(:id, 'box_9_0')
dr.action.move_to(result_div).perform
wait = Selenium::WebDriver::Wait.new(:timeout => 30)
wai until( dr.find_element(:class, 'iPreBox').displayed? )
iprebox = dr.find_element(:class, 'iPreBox')
iprebox.click
sleep 5
dr.quit