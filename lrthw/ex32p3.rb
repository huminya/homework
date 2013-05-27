def gaosi(number)
	if number >= 1
		sum = 0
		(1..number).each do |i|
			sum = sum + i
			puts "1 adding to #{i}, sum is #{sum} "
		end
		return sum
	else
		puts "the number can't less 1."
		exit(0)
	end
end

print "input the number > " ; num=gets.chomp
gaosi(num.to_i)

def oushu(number)
	if number < 1
		puts "number can't less than 1."
		exit(0)
	end
	
	(1..number).each do |i|
		if i%2 == 0
			puts "#{i}"
		end
	end
end