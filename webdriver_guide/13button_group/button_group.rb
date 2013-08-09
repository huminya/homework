#encoding:utf-8
require 'selenium-webdriver'
file_path = 'file:///'+File.expand_path(File.join('.','button_group.html'))

dr = Selenium::WebDriver.for :chrome
dr.get file_path
# click second button
all_btn = dr.find_element(:class, 'btn-toolbar').find_elements(:class, 'btn')
# second_btn = dr.find_element(:class, 'btn-toolbar').find_elements(:class, 'btn').detect{|btn| btn.text=='second'}
second_btn = all_btn.detect{|btn| btn.text=='second'}
second_btn.click
sleep 2
alert = dr.switch_to.alert()
puts alert.text
alert.accept()

# click last button
last_btn = all_btn.last
last_btn.click
sleep 2
alert = dr.switch_to.alert()
puts alert.text
alert.accept()

sleep 2
dr.quit()