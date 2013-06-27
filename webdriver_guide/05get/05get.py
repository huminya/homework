from selenium import webdriver
import time

dr = webdriver.Chrome()

url = 'http://www.163.com'
print "now access to %s" %(url)
dr.get(url)
time.sleep(5)

dr.quit()