#encoding:utf-8
require 'selenium-webdriver'

describe 'Button_dropdown_test' do
	before do
		@dr = Selenium::WebDriver.for :chrome
		@file_path = 'file:///' + File.expand_path(File.join('.', '/spec/button_dropdown.html'))
	end
	
	it '' do
		@dr.get @file_path

		@dr.find_element(:link_text, 'Info').click()
		wait = Selenium::WebDriver::Wait.new(timeout: 10)
		wait.until {@dr.find_element(:class, 'dropdown-menu').displayed?}
		@dr.find_element(:class, 'dropdown-menu').should be_displayed

		@dr.find_element(:class, 'dropdown-menu').find_element(:link_text, 'watir-webdriver').click()
		sleep 1
		alert = @dr.switch_to.alert
		alert.text.should include("watir-webdriver is better than")
		alert.accept()
	end
	
	after do
		@dr.quit()
	end
end