#encoding: utf-8

class MyViewPage < HiExamplePage
	include Menu

	page_url "#{$config.host}my_view_page.php"
	
end
