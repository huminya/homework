#encoding:utf-8
require 'selenium-webdriver'
require 'rspec'

describe 'baidu test' do
	before :all do
		@dr = Selenium::WebDriver.for :chrome
		@url = 'http://hi.baidu.com/pub/show/createtext'
		@dr.get @url
	end
	
	it 'should create a new post successfully' do
		login(@dr)
		@dr.get @url

		@dr.find_element(:id, 'title').send_keys("my post #{Time.now.to_s}")
		content = "今天是2013年7月14日，今天天气好，加油！再加油"
		set_content = "document.getElementById('ueditor_0').contentWindow.document.body.innerText = '#{content}'"
		puts set_content
		sleep 2
		wait = Selenium::WebDriver::Wait.new(:timeout => 30)
		wait.until { @dr.find_element(:id, 'ueditor_0').displayed? }
		@dr.execute_script(set_content)
		@dr.find_element(:id, 'qPubBtnSubmit').click
		sleep 5
		# compare the content
		@dr.find_elements(:class, 'feed-main-box').first.text.should include('my post')
	end
	
	after :all do
		@dr.quit()
	end

	def login(dr)
		uid = 'B7233094AA7AFF8CF306ED65C172EFB2'
		bduss='xyWks2VlF5d1BWS35BVU9pSzNjMmItYWctWXFsdng0dnJGSUN1eVg4eU1hfmRSQVFBQUFBJCQAAAAAAAAAAAEAAABsJVEsaG9saWJhYmEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIzez1GM3s9Rb0'
		dr.manage.delete_all_cookies
		dr.manage.add_cookie(name: 'BAIDUID', value: uid)
		dr.manage.add_cookie(name: 'BDUSS', value: bduss)
	end
end