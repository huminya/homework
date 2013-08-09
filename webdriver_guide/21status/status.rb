#encoding:utf-8
require 'selenium-webdriver'
file_path = 'file:///' + File.expand_path(File.join('.','status.html'))

dr = Selenium::WebDriver.for :chrome
dr.get file_path

text_field = dr.find_element(:name, 'user')
puts text_field.enabled?

puts dr.find_element(:class, 'btn').enabled?

dr.execute_script('$(arguments[0]).hide()', text_field)
puts text_field.displayed?

radio = dr.find_element(:name, 'radio')
radio.click()
puts radio.selected?

begin
	dr.find_element(:id, 'none')
rescue Selenium::WebDriver::Error::NoSuchElementError
	puts 'element does not exist'
end

sleep 1
dr.quit()