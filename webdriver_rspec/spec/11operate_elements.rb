#encoding:utf-8
require 'selenium-webdriver'
describe '11operate_elements' do
	before do 
		@dr = Selenium::WebDriver.for :chrome
		@file_path = 'file:///' + File.expand_path(File.join('./spec/', 'operate_elements.html'))
	end
	it 'click and send_keys to elements' do
		@dr.get @file_path
		# click dropdown1 menu
		@dr.find_element(:link_text, 'Link1').click
		sleep 1
		@dr.find_element(:id, 'dropdown1').should be_displayed
		@dr.find_element(:link_text, 'Link1').click
		sleep 1
		# click dropdown2
		# element = @dr.find_element(:name, 'q')
		# element.send_keys('something to say...')
		# sleep 1
		@dr.find_element(:link_text, 'Link2').click
		@dr.find_element(:id, 'dropdown2').should be_displayed
		sleep 1
		# element.click
		# element.value.should eql('something to say...')
		sleep 1
		#clear
		# element.clear()
	end
	after do
		sleep 1
		@dr.quit()
	end
end