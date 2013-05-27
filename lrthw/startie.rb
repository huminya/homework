$DEBUG = 1

require 'selenium-webdriver'

driver = Selenium::WebDriver.fo :ie

driver.navigate.to "http://www.baidu.com"