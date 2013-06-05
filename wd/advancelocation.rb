DEBUG = 1
require 'selenium-webdriver'

class Selenium::WebDriver::Element
	def high_light
		@bridge.executeScript(high_light_script, self)
	end #high_light
	
	def high_light_script
		'arguments[0].style.border = "3px solid red"'
	end #high_light_script
end

def html_path(file_name)
	'file:///' + File.join(Dir.pwd, file_name)
end

ff = Selenium::WebDriver.for :firefox

ff.get html_path('advance.html')

# locate all checkbox
# all_checkboxes = ff.find_elements(:tag_name, 'input') # output to checkbox array
# all_checkboxes = ff.find_elements(:css, 'input[type=checkbox]') # output to checkbox array
# all_checkboxes = ff.find_elements(:css, 'input[name="4s"]') # output to checkbox array
# all_checkboxes = ff.find_elements(:xpath, '//input') # output to checkbox array

# all_checkboxes.each {|c| c.click}

# locate each div's elements
all_checkboxes_in_first_div = ff.find_element(:id, 'first').find_elements(:css, 'input[type = checkbox]')
all_checkboxes_in_first_div.each {|c| c.click}
all_checkboxes_in_second_div = ff.find_element(:id, 'second').find_elements(:css, 'input[name = "pro"]')
all_checkboxes_in_second_div.each {|c| c.click}
