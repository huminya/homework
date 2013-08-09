# encoding=utf-8 
require 'selenium-webdriver'

def login(dr)

	uid = 'CCBDF055DA9D505186E97EEF155D505E'
	bduss = 'M1aDhsUW5TUGxUWWdrVXVRVTRrN28wWEZUYmxoWUFpbG9sNlB5R2d5YUEzQWxTQUFBQUFBJCQAAAAAAAAAAAEAAABX52YosuLK1NGptvkAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIBP4lGAT-JRS3'
	
	dr.manage.delete_all_cookies
	dr.manage.add_cookie(name: 'BAIDUID', value: uid)
	dr.manage.add_cookie(name: 'BDUSS', value: bduss)
end

dr = Selenium::WebDriver.for :chrome
url = 'http://hi.baidu.com/pub/show/createtext'

dr.get url
login(dr)
dr.get url

dr.find_element(:id, 'title').send_keys("my post #{Time.now.to_s}")
# content = "½ñÌìºÃÀÛ°¡,ÎÊÌâ¶à¶à"
content = "今天是2013年7月14日，今天天气好，加油"
set_content = "document.getElementById('ueditor_0').contentWindow.document.body.innerText = '#{content}'"
puts set_content
sleep 2
wait = Selenium::WebDriver::Wait.new(:timeout => 30)
wait.until { dr.find_element(:id, 'ueditor_0').displayed? }
dr.execute_script(set_content)
dr.find_element(:id, 'qPubBtnSubmit').click
sleep 5
dr.quit()

