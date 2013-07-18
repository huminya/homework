#encoding:utf-8
require 'selenium-webdriver'

# start remote server with chrome
dr = Selenium::WebDriver.for(:remote, :url => "http://192.168.1.xxx:4444/wd/hub", :desired_capabilities => :chrome)

# start remote server with ie
dr = Selenium::WebDriver.for(:remote, :url => "http://192.168.1.xxx:4444/wd/hub", :desired_capabilities => :ie)

# start remote server with ff(default)
dr = Selenium::WebDriver.for(:remote, :url => "http://192.168.1.xxx:4444/wd/hub")

dr.navigate.to 'http://192.168.1.xxx/login.php'

sleep 5

dr.quit()