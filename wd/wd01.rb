$DEBUG = 1 # 打开ruby的debug开关 open the global debug switch

require 'selenium-webdriver'

driver = Selenium::WebDriver.for :ie

driver.navigate.to "http://www.baidu.com"

puts "now visiting the website is: %s" % driver.current_url

driver.close