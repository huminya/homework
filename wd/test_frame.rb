require 'test/unit'
require 'selenium-webdriver'

class FrameTest < Test::Unit::TestCase
def testframe
driver = Selenium::WebDriver.for :firefox

frame_file = 'file:///'+File.expand_path(File.join(File.dirname(__FILE__),'frame.html'))

driver.get frame_file

# locate the p on the default content
driver.find_element(:css, 'p')

# switch the focus on the frame f_1
driver.switch_to.frame('f_1')

# click the button in the f_1
driver.find_element(:id, 'btn').click

# switch to the alert
al = driver.switch_to.alert
sleep 2
# switch to the alert
assert(al.text == 'Hello!This is part 1.', 'alert message error!')
puts al.text

al.accept # close the alert

# switch back to the main frame
driver.switch_to.default_content

puts driver.find_element(:css, 'p').text

# switch to frame 2
driver.switch_to.frame('f_2')
driver.find_element(:id, 'btn').click
sleep 2

al2 = driver.switch_to.alert
puts al2.text
al2.accept
end
end