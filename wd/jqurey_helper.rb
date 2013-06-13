#encoding: utf-8
module JqureyHelper
	def load_jquery(dr, jquery_path)
		jq = read_jquery(jquery_path)
		jq.force_encoding('utf-8')
		dr.execute_script jq
	end
	
	def read_jquery(juqery_path) 
		js = ''
		File.open(File.expand_path(jquery_path),'r') do |f|
			js = f.read
		end
		js
	end
end