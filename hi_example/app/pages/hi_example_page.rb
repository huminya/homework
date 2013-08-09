#encoding: utf-8

class HiExamplePage < Lazyman::Page
	def login
		uid = 'B7233094AA7AFF8CF306ED65C172EFB2'
		bduss='xyWks2VlF5d1BWS35BVU9pSzNjMmItYWctWXFsdng0dnJGSUN1eVg4eU1hfmRSQVFBQUFBJCQAAAAAAAAAAAEAAABsJVEsaG9saWJhYmEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIzez1GM3s9Rb0'
		# dr.manage.delete_all_cookies
		# dr.manage.add_cookie(name: 'BAIDUID', value: uid)
		# dr.manage.add_cookie(name: 'BDUSS', value: bduss)
		@browser.cookies.add('BAIDUID', uid)
		@browser.cookies.add('BDUSS', bduss)
		goto
	end
end
