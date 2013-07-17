远程机器：
1.下载并安装jdk1.6，
2.下载并安装selenium-server-standalone-2.33.0.jar
3.下载webdriver：IEdriver.exe和chromedriver.exe。建议讲这些driver放在windows/SYSTEM32/目录下
4.在cmd下执行java -jar selenium-server-standalone-2.33.0.jar；提示已经打开4444端口即为成功

客户端：
1.远程访问远程http://server:4444/wd/hub，可以访问server的统计页面

2.selenium-webdriver代码
require 'selenium-webdriver'
dr = Selenium::WebDriver.for(:remote, :url => "http://xxx.xxx.xxx.xxx:4444/wd/hub", :desired_capabilities => :chrome)
*不指定浏览器时，默认是调firefox

3.watir-webdriver代码
require "watir-webdriver"  
require "selenium/webdriver/remote/capabilities"  
browser = Watir::Browser.new :remote, :url => "http://xxx.xxx.xxx.xxx:4444/wd/hub", :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome