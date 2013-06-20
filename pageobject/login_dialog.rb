module LoginDialog
	def to_dialog_frame
		begin
			@dr.switch_to.frame('login_frame')
		rescue
			raise 'Can not switch to login dialog, make sure the dialog was open.'
			exit
		end
	end
	
	def usr_field
		@dr.find_element(:id, 'u')
	end
	
	def psd_field
		@dr.find_element(:id, 'p')
	end
	
	def login_btn
		@dr.find_element(:id, 'login_button')
	end
end # LoginDialog