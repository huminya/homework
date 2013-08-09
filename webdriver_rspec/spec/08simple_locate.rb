#encoding:utf-8
require 'selenium-webdriver'

describe 'simple locate test' do
	before(:all) do
		@dr = Selenium::WebDriver.for :chrome
		@file_path = 'file:///' + File.expand_path(File.join('./spec/', 'form.html'))
	end
	
	it 'Email label should be correct' do
		@dr.get @file_path
		@dr.find_element(:css, 'label[for="inputEmail"]').text.should == 'Email'
	end
	
	after(:all) do
		sleep 1
		@dr.quit()  
	end
end