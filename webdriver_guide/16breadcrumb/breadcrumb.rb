#encoding:utf-8
require 'selenium-webdriver'
file_path = 'file:///'+File.expand_path(File.join('.','breadcrumb.html'))

dr = Selenium::WebDriver.for :chrome
dr.get file_path

anstors = dr.find_element(:class, 'breadcrumb').find_elements(:tag_name, 'a').map {|link| link.text}
p anstors
sleep 1

puts dr.find_element(:class, 'breadcrumb').find_element(:class, 'active').text

sleep 2
dr.quit()