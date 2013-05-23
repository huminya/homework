people = 40
cars = 40
buses = 40

if cars > people
	puts "We should take the cars."
elsif cars < people
	puts "we should not take the cars."
else
	puts "we can't decide."
end

if buses > cars
	puts "That's too many buses."
elsif buses < cars
	puts "Maybe we could take the buses."
else
	puts"we still can't decide."
end

if people > buses
	puts "Alright, let's just take the buses."
else
	puts "fine, let's stay home then."
end