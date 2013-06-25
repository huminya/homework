require 'selenium-webdriver'

class Selenium::WebDriver::Element
	def high_light
		@bridge.executeScript(high_light_script, self)
	end # highlight
	
	def fade_out
		@bridge.executeScript(fade_out, self)
	end # fade_out
	
	def high_light_script
		'arguments[0].style.border = "3px solid red"'
	end #high_light_script
	
	def fade_out_script
		'arguments[0].fadeOut().fadeIn()'
	end #fade_out_script
end

dr = Selenium::WebDriver.for :chrome
file_path = 'file:///' + File.expand_path(File.join('.', 'checkbox.html'))
puts file_path
dr.get file_path

# find all checkbox and click
dr.find_elements(:css, 'input[type = checkbox]').each {|c| c.click}
dr.navigate.refresh()
sleep 3

# count of checkbox
puts dr.find_elements(:css, 'input[type = checkbox]').size
sleep 1

# select all input, and pickup all checkbox and click
dr.find_elements(:tag_name, 'input').each do |input|
	input.click if input.attribute(:type) == 'checkbox'
end
sleep 3

dr.navigate.refresh

# click the last checkbox
dr.find_elements(:css, 'input[type = checkbox]').last.click
sleep 1

dr.navigate.refresh()

sleep 3
dr.quit