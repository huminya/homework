the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennis', 2, 'dimes', 3, 'quarters']

# this first kind of for-loop goes through an array using each
the_count.each do |number|
	puts "This is the count: #{number}"
end

# second use of each
the_count.each {|number| puts "That is the count: #{number}"}

# same as above , but using a block instead
fruits.each do |fruit|
	puts "A fruit of type: #{fruit}"
end

# second use of each
fruits.each {|fruit| puts "seond each: A fruit of type: #{fruit}"}

# also we can go through mixed arrays too
change.each do |i|
	puts "I got #{i}"
end
# second use of each
change.each {|i| puts "Secondly I got #{i}"}

# we can also build arrays, first start with an empty one
elements = []

# then use a range object to do 0 to 5 counts
for i in (0..5)
	puts "Adding #{i} to the list."
	# push is a function that arrays understand
	elements.push(i)
end

# now we can puts them out too
elements.each do |i|
	puts "Now element was: #{i}"
end