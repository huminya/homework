DEBUG = 1
require 'selenium-webdriver'

class Selenium::WebDriver::Element
	def flash
		@bridge.executeScript(high_light_script, self)
	end #flash
	
	def high_light_script
		'arguments[0].style.border = "3px solid red"'
	end #high_light_script
end

def html_path(file_name)
	'file:///' + File.join(Dir.pwd, file_name)
end

ff = Selenium::WebDriver.for :firefox

ff.get html_path('div.html')

# click button
ff.find_element(:id, 'btn1').click

# send keys
ff.find_element(:id, 'text').send_keys('hello in text field')
ff.find_element(:id, 'area').send_keys('hello in text area')
# clear
ff.find_element(:id, 'text').clear()
ff.find_element(:id, 'area').clear()

# select list
ff.find_element(:id, 'op1').click

# set radio
ff.find_element(:name, 'radio').click

# click link
ff.find_element(:id, 'link').click

# set checkbox true
ff.find_element(:name, 'checkbox').click
ff.find_element(:tag_name, 'div').attribute('class'/'id')

