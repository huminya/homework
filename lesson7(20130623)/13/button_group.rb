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
file_path = 'file:///' + File.expand_path(File.join('.', 'button_group.html'))
puts file_path
dr.get file_path

second_btn = dr.find_element(:class, 'btn-group').find_elements(:class, 'btn').detect {|btn| btn.text == 'second'}
# array can't call find_element
# second_btn = dr.find_element(:class, 'btn-group').find_elements(:class, 'btn').find_element(:link_text ,'second')
second_btn.click()
alert = dr.switch_to.alert
puts alert.text
sleep 2
alert.accept
sleep 3
dr.quit