def even(n)
	if n < 1
		puts "number can't less than 1."
		exit(0)
	end # end if
	
	number = []
	(1..n).each {|i| number.push(i)}
	puts number
	puts "the even number is :"
	number.each do |i|
		if i%2 == 0
			puts "#{i}"
		end # end if
	end #end do
end

print "input the number :> "; num = gets.chomp()
even(num.to_i)