#encoding:utf-8

module CaseParser
	class Parser
		attr_accessor :rules
		def initialize rule_kls, file_name
			@rules = rule_kls.rules
			@file = file_name
			@rule = rule_kls
		end # initialize
		
		def before
			@rule.before
		end #before
		
		def after
			@rule.after
		end # after
		
		def do
			before
			File.open(@file, 'r') do |f|
				f.each_line do |line|
					@rules.each do |rule_name, reg|
						if m = line.match(reg)
							@rule.method("#{rule_name.to_s}_action".to_sym).call(m)
							break;
						end # if
					end # rules
				end # each_line
			end # file open
			after
		end # do
		
	end # Parser
	
	class Rule
		def rules
			rs = {}
			methods.grep(/rule$/).each {|r| rs[r] = send(r)}
			rs
		end # rules
		
		def get_rule
			/^打开(.+)/
		end # get_rule
		
		def get_rule_action(m)
			puts "@b.get('#{m[1]}')"
		end # get_rule_action
		
		def click_rule
			/^点击(.+\(.+\)$)/
		end # click_rule
		
		def click_rule_action(m)
			puts "#{replace_with_find_element m[1]}.click"
		end # click_rule_action
		
		def send_keys_rule
			/^在(.+\(.+\))中输入(.+)/
		end # send_keys_rule
		
		def send_keys_rule_action(m)
			puts "#{replace_with_find_element m[1]}.send_keys('#{m[2]}')"
		end # send_keys_rule_action
		
		def replace_with_find_element(token)
			s = ''
			token.scan(/\(.+\)/) {|locator| s = "@b.find_element#{locator}"}
			s
		end # replace_with_find_element
		
		def before
			puts "require 'selenium-webdriver'"
			puts '@b = Selenium::WebDriver.for :chrome'
		end # before
		
		def after
			puts '@b.quit'
		end # after
	end # Rule
	
end # CaseParser

rule_kls = CaseParser::Rule.new
CaseParser::Parser.new(rule_kls, ARGV.first).do