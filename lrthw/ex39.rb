ten_things = "Apples Oranges Crows Telephone Light Sugar"
stuff = ten_things.split(' ')

puts "Wait! there's #{stuff.length} things, not 10 things in that list, let's fix that!"

more_stuff = %w(Day Night Song Frisbee Corn Banana Girl Boy)

while stuff.length != 10
	next_one = more_stuff.pop()
	puts "Adding: #{next_one}"
	stuff.push(next_one)
	puts "There's #{stuff.length} items now."
end

puts "there we go: #{stuff}"

puts "Let's do some things with stuff."

puts "the No2: %s" %stuff[1]
puts "the No -1(that's last one): %s" %stuff[-1] # whoa! fancy!
puts "pop the last one: %s" %stuff.pop()
puts stuff.join('-') # what's cool!
puts stuff.values_at(3..5).join('#') # super stellar!