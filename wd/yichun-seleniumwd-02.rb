require 'test/unit'
require 'selenium-webdriver'

dr = Selenium::WebDriver.for :chrome

url = 'http://www.soso.com'

dr.get url
sleep 5
search_input = dr.find_element(:id, 's_input')
sleep 2
search_input.send_keys('webdriver')
sleep 2
search_input.submit
sleep 5
match = dr.current_url.match(/\b\w+$/)
keyword = match[0]
puts keyword
soso = dr.find_element(:id, 'sInfo').text
puts soso
# result_url = dr.find_element(:id, 'main').find_element(:id, 'result').find_elements(:css, 'a')
result_url = dr.find_element(:id, 'result').find_elements(:tag_name, 'a')
result_url.each {|links| puts links['href']}

# result00 = result.find_element(:id, 'box_0_0')
# result00.click