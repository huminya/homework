require 'selenium-webdriver'

dr = Selenium::WebDriver.for :chrome
url = 'http://sports.sina.com.cn'
sleep 2
dr.navigate.to url
sleep 5
puts "now access #{url}"

puts "title of current page is #{dr.title}"
puts "url of current page is #{dr.current_url}"
sleep 5

puts 'close browser'
dr.quit