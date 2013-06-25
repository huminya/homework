require 'selenium-webdriver'

dr = Selenium::WebDriver.for :chrome
url1 = 'http://www.sina.com.cn'
url2 = 'http://sports.sina.com.cn'
sleep 1
dr.get url1
sleep 5
puts "now access #{url1}"
puts "title of current page is #{dr.title}"
puts "url of current page is #{dr.current_url}"
sleep 5

dr.get url2
sleep 5
puts "now access #{url2}"
puts "title of current page is #{dr.title}"
puts "url of current page is #{dr.current_url}"
sleep 5

# back to url1
dr.navigate.back()
sleep 5
puts "now back to #{dr.current_url}"
sleep 5

dr.navigate.forward()
puts "now forward to #{dr.current_url}"

puts 'close browser'
dr.quit