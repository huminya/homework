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
file_path = 'file:///' + File.expand_path(File.join('.', 'navs.html'))
puts file_path
dr.get file_path

# locate the submenu by ul
dr.find_element(:class, 'nav-pills').find_element(:link_text, 'About').click()
sleep 2

# locate directly
dr.find_element(:link_text, 'Home').click()

sleep 3
dr.quit