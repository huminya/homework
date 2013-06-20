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
file_path = 'file:///' + File.expand_path(File.join('.', 'level_locate.html'))
puts file_path
dr.get file_path

dr.find_element(:link_text, 'Link1').click
wait = Selenium::WebDriver::Wait.new({:timeout => 30})
wait.until {dr.find_element(:id, 'dropdown1').displayed?}
menu = dr.find_element(:id, 'dropdown1').find_element(:link_text, 'Another action')

sleep 2
menu.high_light
sleep 2
# menu.click
dr.action.move_to(menu).perform()

sleep 3
dr.quit