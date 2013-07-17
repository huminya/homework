#encoding:utf-8
require 'selenium-webdriver'

# start remote server with chrome
# Selenium::WebDriver::Chrome.path = '\\192.168.1.223\file:///' + File.expand_path("C:/Program Files/Chrome")
dr = Selenium::WebDriver.for(:remote, :url => "http://192.168.1.223:4444/wd/hub", :desired_capabilities => :chrome)

# start remote server with ie
dr = Selenium::WebDriver.for(:remote, :url => "http://192.168.1.223:4444/wd/hub", :desired_capabilities => :ie)

# start remote server with ff(default)
dr = Selenium::WebDriver.for(:remote, :url => "http://192.168.1.223:4444/wd/hub")

dr.navigate.to 'http://192.168.1.223/zentao'

sleep 5

dr.quit()