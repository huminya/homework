#encoding: utf-8
class HiHomePage < HiExamplePage
	page_url 'http://hi.baidu.com/home'
	
	div('first_post', class: 'feed-main-box', index:0)
end