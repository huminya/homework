animals = ['1-tiger', '2-dog', '3-lion', '4-zebra', '5-bear']
title = ['Gold', 'Silver', 'Brone']
race = []

for i in (0 .. 4)
	puts "in race sport's animals is: #{animals[i]}"
end

for j in (1 .. 3)
	print "who gets the No#{j}:"; 
	num = gets.chomp
	race.push(num)
	puts 
end

for k in (0 .. 2)
	r = race[k].to_f - 1
	puts "the #{title[k]} is: #{animals[r]}"
end

puts "Congraduaions!"