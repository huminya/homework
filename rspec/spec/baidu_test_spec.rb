#encoding:utf-8
require 'selenium-webdriver'

describe 'Baidu Test' do
=begin
	it 'should have correct title' do
		url = 'http://www.baidu.com'
		dr = Selenium::WebDriver.for :chrome
		dr.get(url)

		dr.title.should == '百度一下，你就知道'
		dr.quit()
	end
	
	it 'should have correct url' do
		url = 'http://www.baidu.com'
		dr = Selenium::WebDriver.for :chrome
		dr.get(url)
		puts dr.current_url
		dr.current_url.should == 'http://www.baidu.com/'
		dr.quit()
	end
=end
	it 'true or false' do
		真理 = true
		真理.should be_true
	end
	
	it 'include string' do
		# 'abc'.include?('c').should be_true
		'abc'.should include('b')
	end
	
	it 'exclude string' do
		# 'abc'.include?('d').should be_false
		'abc'.should_not include('d')
	end
end