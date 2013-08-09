require 'watir-webdriver'

b = Watir::Browser.new :chrome
puts 'start chrome'
sleep 2
puts 'max window'
b.window.maximize()
sleep 1
puts 'resize window'
b.window.resize_to(800,600)
puts 'close chrome'
b.close