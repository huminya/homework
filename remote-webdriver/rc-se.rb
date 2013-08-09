#encoding:utf-8
require 'selenium-webdriver'

# start remote server with chrome
dr = Selenium::WebDriver.for(:remote, :url => "http://192.168.1.223:4444/wd/hub", :desired_capabilities => :chrome)

# start remote server with ie
# dr = Selenium::WebDriver.for(:remote, :url => "http://192.168.0.133:4444/wd/hub", :desired_capabilities => :ie)

# start remote server with ff(default)
# dr = Selenium::WebDriver.for(:remote, :url => "http://192.168.0.133:4444/wd/hub")

# dr.navigate.to 'http://192.168.1.223:88/usr-login-Lw==.htmls'
# dr.navigate.to 'http://www.baidu.com/'
dr.navigate.to 'http://192.168.1.9:8080/'

sleep 10

dr.quit()