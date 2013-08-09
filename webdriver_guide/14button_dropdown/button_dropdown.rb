#encoding:utf-8
require 'selenium-webdriver'
file_path = 'file:///' + File.expand_path(File.join('.', 'button_dropdown.html'))

dr = Selenium::WebDriver.for :chrome
dr.get file_path

dr.find_element(:link_text, 'Info').click()
wait = Selenium::WebDriver::Wait.new(timeout: 10)
wait.until {dr.find_element(:class, 'dropdown-menu').displayed?}

dr.find_element(:class, 'dropdown-menu').find_element(:link_text, 'watir-webdriver').click()
sleep 1
alert = dr.switch_to.alert
alert.accept()

dr.quit()