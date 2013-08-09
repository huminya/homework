require 'watir-webdriver'

b = Watir::Browser.new :chrome
puts 'start chrome'
sleep 5
puts 'close chrome'
b.close