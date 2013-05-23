def cheese_and_crackers(cheese_count, boxes_of_crackers)
	puts "You have #{cheese_count} cheeses!"
	puts "You have #{boxes_of_crackers} boxes of crackers!"
	puts "Man that's enough for a party!"
	puts "Get a blanket."
	puts # a blank line
end

# directly use numbers
puts "We can just give the function numbers directly:(20,30)"
cheese_and_crackers(20,30)

# use variables
puts "OR, we can use variables from our script:(amount_of_cheese=10, amount_of_crackers=50)"
amount_of_cheese = 10
amount_of_crackers = 50
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

# do math inside
puts "we can even do math inside too:(10+20,5+6)"
cheese_and_crackers(10+20, 5+6)

# use variables and math
puts "And we can combine the two, variables and math:(amount_of_cheese+100, amount_of_crackers+200)"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 200)