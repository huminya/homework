$DEBUG = 1 # 打开ruby的debug开关 open the global debug switch
#encoding: gbk
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :ie

url = "http://www.sina.com.cn"

driver.navigate.to url

driver.current_url

sports_url = 'sports.sina.com.cn'

driver.get sports_url

driver.current_url

driver.navigate.back

sleep 10

driver.navigate.forward
puts driver.title
sleep 10

driver.navigate.refresh

sleep 5

driver.close