require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome

url = "http://www.baidu.com"

# open url
driver.get(url)
# print out the title
puts driver.title
# print out the url
puts driver.current_url
# show the source in page
puts driver.page_source

driver.close()