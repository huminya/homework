require 'rubygems'
require 'selenium-webdriver'
require './base_page'

dr = Selenium::WebDriver.for :chrome
url = 'http://www.soso.com'
soso_page = Site.new(dr).soso_main_page(url).open
soso_page.login('test', 'test')