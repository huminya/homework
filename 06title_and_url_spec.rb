#encoding:utf-8
require 'selenium-webdriver'

describe 'title and url test suit' do
	before(:all) do
		@dr = Selenium::WebDriver.for :chrome
		@url_163 = 'http://www.163.com'
		@url_baidu = 'http://www.baidu.com'
	end

	it 'title test for 163' do
		@dr.get @url_163
		puts "title of the 163 current page is #{@dr.title}"
		@dr.title.should == '网易'
		sleep 1
	end

	it 'title test for baidu' do
		@dr.get @url_baidu
		puts "title of the baidu current page is #{@dr.title}"
		@dr.title.should =='百度一下，你就知道'
		sleep 1
	end
	
	it 'url test for 163' do
		@dr.get @url_163
		puts "url of the 163 current url is #{@dr.current_url}"
		@dr.current_url.should == 'http://www.163.com/'
		sleep 1
	end
	
	it 'url test for baidu' do
		@dr.get @url_baidu
		puts "url of the baidu current url is #{@dr.current_url}"
		@dr.current_url.should == 'http://www.baidu.com/'
		sleep 1
	end
	
	after(:all) do
		sleep 1
		@dr.quit()
	end
end