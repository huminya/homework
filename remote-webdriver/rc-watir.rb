require "watir-webdriver"  
require "selenium/webdriver/remote/capabilities"  
  
browser = Watir::Browser.new :remote, :url => "http://192.168.1.223:4444/wd/hub", :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome
browser.goto 'http://192.168.1.223/zentao'

sleep 5

browser.close()