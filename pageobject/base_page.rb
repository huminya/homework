class BrowserContainer
	def initialize(driver)
		@dr = driver
	end
end # BrowserContainer

class Site < BrowserContainer
	def soso_main_page(url)
		@soso_main_page = SosoMainPage.new(@dr, url)
	end
	
	def close
		@dr.close
	end
end # Site

class BasePage < BrowserContainer
	attr_reader :url
	
	def initialize(dr, url)
		super(dr)
		@url = url
	end
	
	def open
		@dr.navigate.to @url
		self
	end
end # BasePage

class SosoMainPage < BasePage
	require './login_dialog'
	include LoginDialog

	def login(usr,psd)
		open_login_dialog
		to_dialog_frame
		usr_field.send_keys(usr)
		psd_field.send_keys(psd)
		login_btn.click
	end
	
	def open_login_dialog
		@dr.find_element(:id, 'ua').find_elements(:css, 'a').click
		# login_link.send_keys(:enter)
		ualink.send_keys(:enter)
		sleep 2
	end
	
	# private
	
	def ua_links
		@dr.find_element(:id, 'ua').find_elements(:css, 'a')
		@dr.find_element(:id, 'ua').find_elements(:css, 'a')
		# ualink.each {|l| puts l}
	end
	
	# def login_link
		# @ua_links[3]
	# end
end #SosoMainPage