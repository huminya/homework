#encoding:utf-8
require File.expand_path 'app/cases/spec_helper'

describe 'Hi baidu test by myhu', :hi do
	before :all do
	
	end
	
	it 'should create post successfully' do
		create_post_page = $navi.goto_create_post_page
		create_post_page.login
		mytitle = "myhu post #{Time.now.to_s}"
		mycontent = '见贤思齐焉'
		home_page = create_post_page.create_post(mytitle, mycontent)
		sleep 3
		home_page.first_post_element.when_present
		home_page.first_post.should include('myhu post')
	end
	
	after :all do
	
	end
end