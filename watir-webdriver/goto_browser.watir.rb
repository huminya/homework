require 'watir-webdriver'

b = Watir::Browser.new :chrome
url = 'http://www.baidu.com'
puts 'start chrome'
b.goto url
sleep 2
puts 'max window'
b.window.maximize()
sleep 1
puts 'close chrome'
b.close