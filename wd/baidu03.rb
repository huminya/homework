$DEBUG = 1 # 打开ruby的debug开关 open the global debug switch

require 'selenium-webdriver'

driver = Selenium::WebDriver.for :ie

url = "http://www.baidu.com"

driver.get url
driver.find_element(:id, 'kw').send_keys('ruby blog')
driver.find_element(:id, 'su').click