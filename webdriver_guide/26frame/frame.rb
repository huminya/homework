#encoding: utf-8
require 'selenium-webdriver'
file_path = 'file:///' + File.expand_path(File.join('.','frame.html'))

dr = Selenium::WebDriver.for :chrome
dr.get file_path

# to frame f1, then f2
dr.switch_to.frame('f1')
dr.switch_to.frame('f2')

# sendkeys to baidu.com
dr.find_element(:id, 'kw').send_keys('清道夫')
sleep 1
dr.find_element(:id,'su').click

# switch to all frame
dr.switch_to.default_content

# switch to f1
dr.switch_to.frame('f1')

# click
dr.find_element(:link_text, 'click').click
sleep 1
alert = dr.switch_to.alert
sleep 1
alert.accept

sleep 1
dr.quit()
