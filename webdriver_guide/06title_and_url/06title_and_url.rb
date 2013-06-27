require 'selenium-webdriver'

dr = Selenium::WebDriver.for :ff

url = 'http://www.163.com'

dr.get url

puts "title of the current page is #{dr.title}"
puts "url of the current page is #{dr.current_url}"

sleep 2
dr.quit()