#encoding:utf-8
require 'selenium-webdriver'

describe 'should be correct status' do
	before(:all) do
		file_path = 'file:///' + File.expand_path(File.join('.','./spec/status.html'))
		@dr = Selenium::WebDriver.for :chrome
		@dr.get file_path
		@text_field = @dr.find_element(:name, 'user')
	end
	
	it 'text_field should be in disabled' do
		# text_field = @dr.find_element(:name, 'user')
		text_field_status = @text_field.enabled?
		# puts text_field.enabled?
		# text_field_status.should_not be_true
		text_field_status.should be_false
		
		# puts dr.find_element(:class, 'btn').enabled?
		# btn_status = dr.find_element(:class, 'btn').enabled?
		# btn_status.should be_true

		# text_field_displayed_status = text_field.displayed?
		# text_field_displayed_status.should be_true
	end
	it 'text_field should be displayed' do
		text_field_displayed_status = @text_field.displayed?
		text_field_displayed_status.should be_true
	end
	it 'button should be disabled' do
		@dr.find_element(:class, 'btn').attribute('class').should include('disabled')
	end
	it 'radio should be selected after selected' do
		radio = @dr.find_element(:name, 'radio')
		radio.click()
		radio_status = radio.selected?
		radio_status.should be_true
	end
	after(:all) do
		sleep 1
		@dr.quit()
	end
end