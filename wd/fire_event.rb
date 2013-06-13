require 'rubygems'
require 'selenium-webdriver'
require './jquery_helper'

include JqueryHelper

dr = Selenium::WebDriver.for :firefox
test_file = 'file:///'+File.expand_path(File.join(File.dirname(__FILE__),'fire_event.html'))
dr.get test_file

jquery_path = './jquery-1.6.4.min.js'
load_jquery(dr, jquery_path)
jq = <<JQ