# this one is like your scripts with argv
def tax_calc_month(*args)
	salary = args[0]
	tax_rate = args[1]
	tax_month = salary * tax_rate
	puts "your month's salary is #{salary}, tax a month is #{tax_month}"
end

def tax_calc_year(*args)
	salary = args[0]
	tax_rate = args[1]
	month_tax = args[2]
	tax_a_year = salary * tax_rate * month_tax
	puts "your month's salary is #{salary},tax a year is #{tax_a_year}"
end

tax_calc_month(5000,0.10)
tax_calc_year(5000,0.10,12)