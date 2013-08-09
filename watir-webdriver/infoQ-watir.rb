#encoding:utf-8
require 'watir-webdriver'

browser = Watir::Browser.new :chrome
url = 'http://www.infoq.com/cn/development/articles/7'

browser.goto url
sleep 2
i = 1

f = File.new("infoq.txt", "w+")

browser.div(:id => 'content').divs(:class => 'news_type1').each do |p1|
	f.write("第#{i}篇文章：#{p1.h2.link.title}\n")
	f.write("#{p1.span(:class, 'author').text}\n")
	f.write("内容：#{p1.text}\n")
	f.write("\n")
	i+=1
end

browser.div(:id => 'content').divs(:class => 'news_type2 full_screen').each do |p2|
	f.write("第#{i}篇文章：#{p2.h2.link.title}\n")
	f.write("#{p2.span(:class, 'author').text}\n")
	f.write("内容：#{p2.div(:class, 'txt').text}\n")
	f.write("\n")
	i += 1
end

sleep 2
browser.quit