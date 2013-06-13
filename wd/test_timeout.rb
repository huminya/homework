DEBUG = 1
require 'test/unit'
require 'rubygems'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox
test_file = 'file:///'.concat File.expand_path(File.join(File.dirname(__FILE__),'set_timeout.html'))
driver.get test_file

driver.find_element(:id, 'b').click
wait = Selenium::WebDriver::Wait.new({:timeout => 30})
box = wait.until {driver.find_element(:css, '.red_box')}
driver.execute_script('arguments[0].style.border = "5px solid yellow"',box)