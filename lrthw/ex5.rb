my_name = 'Zed A. Shaw'
my_age = 35 # not a lie
my_height = 74 # inches
my_weight = 180 # lbs
my_eyes = 'Blue' # eye's color
my_teeth = 'White'
my_hair = 'Brown'

# this is the tranform. 1磅=0.45359237千克
pounds2kg =  0.45359237
inche2meter = 0.0254    # 1英寸=2.54厘米=0.0254米

puts "Let's talk about %s." % my_name
puts "He's %f meter tall.Acutally he is %d years old." % [my_height * inche2meter, my_age+5]
puts "He is %f kilogram(KG) heavy." % [my_weight * pounds2kg]
puts "Acutally that's not too heavy."
puts "He's got %s eyes and %s hair." % [my_eyes, my_hair]
puts "His teeth are usually %s depending on the coffee." % my_teeth

# This line is tricky, try to get exactly right.
puts "If I add %d, %d, and %d I get %d." % [
	my_age, my_height, my_weight, my_age + my_height + my_weight]