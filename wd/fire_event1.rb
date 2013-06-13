DEBUG = 1
require 'selenium-webdriver'

class Selenium::WebDriver::Element
	def highlight
		@bridge.executeScript(high_light_script, self)
	end #highlight
	
	def high_light_script
		'arguments[0].style.border = "3px solid red"'
	end #high_light_script
end

def html_path(file_name)
	'file:///' + File.join(Dir.pwd, file_name)
end

ff = Selenium::WebDriver.for :chrome

ff.get html_path('fireevent.html')

# click button
m = ff.find_element(:css, '.mo')
m.highlight

# use action move_to.perform
# 100.times do
	# ff.action.move_to(m).perform
# end

# call js of show_tips
js_show = %q[show_tips();]
js_hide = %q[hide_tips();]

ff.execute_script js_show
t = ff.find_element(:class, 'tips')
t.highlight
sleep 5

ff.execute_script js_hide