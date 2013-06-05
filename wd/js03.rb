# http://www.cnblogs.com/nbkhic/tag/selenium/
DEBUG = 1
require 'rubygems'
require 'selenium-webdriver'

url = 'http:://www.qq.com'
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

ff.get url

sleep 5

ff.find_element(:id, 'mainnav').flash