#encoding:utf-8
require 'selenium-webdriver'

describe 'level_locate_test' do
	before(:all) do
		@dr = Selenium::WebDriver.for :chrome
		@file_path = 'file:///' + File.expand_path(File.join('./spec/', 'level_locate.html'))
	end
	
	it 'dropdownmenu should be displayed' do
		@dr.get @file_path

		@dr.find_element(:link_text, 'Link1').click
		@dr.find_element(:id, 'dropdown1').should be_displayed
		# wait = Selenium::WebDriver::Wait.new({:timeout => 30})
		# wait.until {@dr.find_element(:id, 'dropdown1').displayed?}
		# menu1 = dr.find_element(:id, 'dropdown1').find_elements(:id, '')
		# menu1 = @dr.find_element(:id, 'dropdown1').find_element(:tag_name, 'a').text
		# puts menu1
		# menu1.should include('Action1')
	end

	# dr.action.move_to(menu1).perform()
	after(:all) do
		sleep 1
		@dr.quit()
	end
end