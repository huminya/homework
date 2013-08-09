#encoding: utf-8
require 'selenium-webdriver'

dr = Selenium::WebDriver.for :chrome
url = 'http://www.baidu.com'
dr.get url

p dr.manage.all_cookies
dr.manage.delete_all_cookies
dr.manage.add_cookie(name: 'BAIDUID', value: 'B7233094AA7AFF8CF306ED65C172EFB2:FG=1')
dr.manage.add_cookie(name: 'BDUSS', value: 'xyWks2VlF5d1BWS35BVU9pSzNjMmItYWctWXFsdng0dnJGSUN1eVg4eU1hfmRSQVFBQUFBJCQAAAAAAAAAAAEAAABsJVEsaG9saWJhYmEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIzez1GM3s9Rb0')
sleep 1
dr.navigate.refresh()
dr.get url

sleep 10
dr.quit()