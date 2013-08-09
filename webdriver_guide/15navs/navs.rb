#encoding:utf-8
require 'selenium-webdriver'

file_path = 'file:///' + File.expand_path(File.join('.', 'navs.html'))
dr = Selenium::WebDriver.for :chrome
dr.get file_path

# way1: locate ul, then locate li
dr.find_element(:class, 'nav').find_element(:link_text, 'About').click()
sleep 2

# way2: locate directly by link
dr.find_element(:link_text, 'Home').click
sleep 2

dr.quit()