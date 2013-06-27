require 'selenium-webdriver'

dr_ff = Selenium::WebDriver.for :ff

sleep 2

dr_ff.close()

dr_chrome = Selenium::WebDriver.for :chrome

sleep 2

dr_chrome.quit() # quit is better than close