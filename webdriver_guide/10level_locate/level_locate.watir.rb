#encoding:utf-8
require 'watir-webdriver'

# dr = Selenium::WebDriver.for :chrome
b = Watir::Browser.new :chrome

file_path = 'file:///' + File.expand_path(File.join('.', 'level_locate.html'))

# dr.get file_path
b.goto file_path

# dr.find_element(:link_text, 'Link1').click
b.link(:text, 'Link1').click
=begin
wait = Selenium::WebDriver::Wait.new({:timeout => 30})
wait.until {dr.find_element(:id, 'dropdown1').displayed?}
menu1 = dr.find_element(:id, 'dropdown1').find_element(:link_text, 'Another action1')

dr.action.move_to(menu1).perform()
=end

menu = b.ul(:id, 'dropdown1').when_present(10).link(:text, 'Another aciton')
menu.focus

sleep 2
# dr.quit()
b.close