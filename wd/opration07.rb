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

ff = Selenium::WebDriver.for :chrome

ff.get html_path('elements.html')

# click button
#ff.find_element(:id, 'btn1').click
sleep 10
# send keys
ff.find_element(:id, 'text').send_keys('hello in text field')
sleep 3
ff.find_element(:id, 'area').send_keys('hello in text area')
sleep 3
# clear
ff.find_element(:id, 'text').clear()
sleep 3
ff.find_element(:id, 'area').clear()
sleep 3
# select list
ff.find_element(:id, 'op1').click
sleep 3
# set radio
ff.find_element(:name, 'radio').click
sleep 3
# set checkbox true
ff.find_element(:name, 'checkbox').click
sleep 3
# click link
ff.find_element(:id, 'link').click
#ff.find_element(:tag_name, 'div').attribute('class'/'id')