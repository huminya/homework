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
file_path = 'file:///' + File.expand_path(File.join('.', 'form.html'))
puts file_path
dr.get file_path

# locate by id
email = dr.find_element(:id, 'inputEmail')
# email.high_light
sleep 1
email.send_keys('myemail@gmail.com')
sleep 3
# locate by name
dr.find_element(:name, 'password').send_keys('mypassword')
sleep 3
# locate by tagname
puts dr.find_element(:tag_name, 'form')[:class]

#by class_name
e = dr.find_elements(:class, 'controls')[1]
# e.high_light
sleep 1
# dr.execute_script('$(arguments[0]).fadeOut().fadeIn()', e)

# locate by link text
# link = dr.find_element(:link_text, 'register')
# link.high_light
# sleep 1

# locate by partial link text
link2 = dr.find_element(:partial_link_text, 'reg')
# link2.high_light
sleep 1

# locate by css
btn = dr.find_element(:css, '.controls')
# btn.high_light

# locate by xpath
# dr.find_element(:xpath, '/html/body/form/div[3]/label/input').click
dr.find_element(:class, 'checkbox').click

sleep 5
dr.quit