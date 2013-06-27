require 'selenium-webdriver'

dr = Selenium::Webdriver.for :ff
url = 'http://www.163.com'
puts "now access to #{url}"
dr.get url
sleep 5

puts 'close browser'
dr.quit()