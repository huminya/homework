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

dr = Selenium::WebDriver.for :firefox
file_path = 'file:///' + File.expand_path(File.join('.', 'send_keys.html'))
puts file_path
dr.get file_path

# copy content of A
dr.find_element(:id, 'A').send_keys([:control, 'a'])
dr.find_element(:id, 'A').send_keys([:control, 'c'])
sleep 1

# paste to B
dr.find_element(:id, 'B').send_keys([:control, 'v'])
sleep 1

# send keys to A
dr.find_element(:id, 'B').send_keys("\n", 'watir', '-', 'webdriver', :space, 'is', :space, 'better')

sleep 3
dr.quit