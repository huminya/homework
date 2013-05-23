puts "How much you earn every month?"
sal = gets.chomp()
salary = sal.to_f
base_tax_salary = 1000
months_in_a_year = 15
taxrate = 0.10

tax = (salary - base_tax_salary) * taxrate
puts "The base salary to tax is #{base_tax_salary}. tax rate is #{taxrate}."
puts "So, you have #{sal} a month, and should pay #{tax * months_in_a_year} tax every year."