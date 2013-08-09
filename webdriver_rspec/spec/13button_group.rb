#encoding:utf-8
require 'selenium-webdriver'

describe '13button_group test' do
	before do
		@dr = Selenium::WebDriver.for :chrome
		@file_path = 'file:///'+File.expand_path(File.join('./spec/','button_group.html'))
	end
	it 'button group should be correct' do
		@dr.get @file_path
		# check first of button_group by name
		all_btn = @dr.find_element(:class, 'btn-toolbar').find_elements(:class, 'btn')
		# second_btn = dr.find_element(:class, 'btn-toolbar').find_elements(:class, 'btn').detect{|btn| btn.text=='second'}
		# click second button and check the alert's text
		second_btn = all_btn.detect{|btn| btn.text=='second'}
		second_btn.should be_displayed
		second_btn.click
		sleep 1
		alert = @dr.switch_to.alert()
		puts alert.text
		alert.text.should == 'second'
		alert.accept()

		# click last button
		# last_btn = all_btn.last
		# last_btn.click
		# sleep 2
		# alert = dr.switch_to.alert()
		# puts alert.text
		# alert.accept()
	end
	after do
		sleep 1
		@dr.quit()
	end
end