require 'selenium-webdriver'
@b = Selenium::WebDriver.for :chrome
@b.get('http://www.baidu.com')
@b.find_element(id: 'kw').send_keys('watir-webdriver')
@b.find_element(id: 'su').click
@b.quit
