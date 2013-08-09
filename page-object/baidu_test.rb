require 'selenium-webdriver'
require 'page-object'

class BaiduPage
	include PageObject
	
	text_field(:keyword, :id => 'kw')
	button(:search, :id => 'su')
end

browser = Selenium::WebDriver.for :chrome
browser.get 'http://www.baidu.com'
baidu_page = BaiduPage.new(browser)

baidu_page.keyword = 'watir-webdriver'
baidu_page.search