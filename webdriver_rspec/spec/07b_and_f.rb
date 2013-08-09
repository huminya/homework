#encoding:utf-8
require 'selenium-webdriver'

describe 'forward and back test' do
	before(:all) do
		@dr = Selenium::WebDriver.for :chrome
		@url_main_page = 'http://www.sina.com.cn/'
		@url_news = 'http://news.sina.com.cn/'
	end
	
	it 'from news back mainpage' do
		@dr.get @url_main_page
		sleep 1
		@dr.get @url_news
		sleep 1
		@dr.navigate.back()
		sleep 1
		@dr.current_url.should == @url_main_page
	end
	
	it 'from mainpage back and forward to news' do
		@dr.get @url_main_page
		@dr.find_element(:link_text, '新闻').click
		url_sina_news = @dr.current_url
		@dr.navigate.back()
		@dr.navigate.forward()
		@dr.current_url.should == url_sina_news
	end

	after(:all) do
		sleep 2
		@dr.quit()
	end
end