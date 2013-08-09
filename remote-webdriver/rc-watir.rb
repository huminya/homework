require "watir-webdriver"  
require "selenium/webdriver/remote/capabilities"  

browser = Watir::Browser.new :remote, :url => "http://192.168.0.133:4444/wd/hub", :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.ie
browser.goto 'http://www.baidu.com/'

sleep 30

browser.close()