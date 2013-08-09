require 'watir-webdriver'

dr = Watir::Browser.new :chrome

file_path = 'file:///' + File.expand_path(File.join('.', 'form.html'))
puts file_path
dr.goto file_path

# by id
# dr.find_element(:id, 'inputEmail').click
dr.text_field(:id, 'inputEmail').click

# by name
# dr.find_element(:name, 'password').click
dr.text_field(:name, 'password').click

# by tag_name
# puts dr.find_element(:tag_name, 'form')[:class]
puts dr.form().attribute_value(:class)

# by class_name
e = dr.div(:class, 'controls')
dr.execute_script('$(arguments[0]).fadeOut().fadeIn()', e)
sleep 1

# by link text
# link = dr.find_element(:link_text, 'register')
link = dr.link(:text, 'register')
dr.execute_script('$(arguments[0]).fadeOut().fadeIn()', link)
sleep 2

# by partial link text
# plink = dr.find_element(:partial_link_text, 'reg')
plink = dr.link(:text, /reg/)
dr.execute_script('$(arguments[0]).fadeOut().fadeIn()', plink)
sleep 2

# by css selector
# div = dr.find_element(:css, '.controls')
div = dr.element(:css, '.controls')
dr.execute_script('$(arguments[0]).fadeOut().fadeIn()', div)
sleep 2

# by xpath watir not support
# dr.find_element(:xpath, '/html/body/form/div[3]/div/label/input').click

sleep 2
dr.quit()  