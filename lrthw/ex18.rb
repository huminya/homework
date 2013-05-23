# this one is like your scripts with argv
def puts_two(*args)
	arg1, arg2 = args
	puts "this is puts_two arg1: #{arg1}, arg2:#{arg2}"
end

# ok, that #args is actually pointless, we can just do this
def puts_two_again(arg1, arg2)
	puts "this is puts_two_again arg1: #{arg1}, arg2: #{arg2}"
end

# this just takes one argument
def puts_one(arg1)
	puts "this is puts_one arg1: #{arg1}"
end

# this one take no argument
def puts_none()
	puts "this is puts_none. I got nothin'."
end

puts_two("Zed","Shaw")
puts_two_again("Zed Michael","Shaw O'neal")
puts_one("FirstOne")
puts_none()