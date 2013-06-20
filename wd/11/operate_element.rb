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
file_path = 'file:///' + File.expand_path(File.join('.', 'operate_element.html'))
puts file_path
dr.get file_path

# click
dr.find_element(:link_text, 'Link1').click
sleep 1
dr.find_element(:link_text, 'Link1').click

# send_keys
element = dr.find_element(:name, 'q')
element.send_keys('something to say')
sleep 2

# clear
element.clear()

sleep 3
dr.quit