Զ�̻�����
1.���ز���װjdk1.6��
2.���ز���װselenium-server-standalone-2.33.0.jar
3.����webdriver��IEdriver.exe��chromedriver.exe�����齲��Щdriver����windows/SYSTEM32/Ŀ¼��
4.��cmd��ִ��java -jar selenium-server-standalone-2.33.0.jar����ʾ�Ѿ���4444�˿ڼ�Ϊ�ɹ�

�ͻ��ˣ�
1.Զ�̷���Զ��http://server:4444/wd/hub�����Է���server��ͳ��ҳ��

2.selenium-webdriver����
require 'selenium-webdriver'
dr = Selenium::WebDriver.for(:remote, :url => "http://xxx.xxx.xxx.xxx:4444/wd/hub", :desired_capabilities => :chrome)
*��ָ�������ʱ��Ĭ���ǵ�firefox

3.watir-webdriver����
require "watir-webdriver"  
require "selenium/webdriver/remote/capabilities"  
browser = Watir::Browser.new :remote, :url => "http://xxx.xxx.xxx.xxx:4444/wd/hub", :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome