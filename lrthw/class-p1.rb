# module PuruAnimal
	# def blood
		# 'warm'
	# end
	
	# def eat_milk
		# true
	# end
# end

# module Fish
	# def blood
		# 'cold'
	# end
	
	# def eat_milk
		# false
	# end
# end
# 构造函数
# 当类被实例化的时候，自动去调用的函数

# Hello.new() # Hello 类被实例化

#类：一组方法（函数）和属性的集合
# @开头的就是对象的实例变量， instance variable
# 类中include Module 表示将Module里的所有方法都定义成class中的instance method

# class Human
	# include PuruAnimal
	# attr_accessor :name, :age
	# attr_reader :sex # def sex()
	# attr_writer	:income
	
	# def initialize(name, age, sex, income)
		# @name = name
		# @age = age
		# @sex = sex
		# @income = income
	# end
=begin
	def name()
		@name # return name
	end
	
	def age()
		@age
	end # return age
	
	def sex()
		@sex
	end # return sex
	
	def namechange(new_name)
		@name = new_name
	end
	
	def agechange(new_age)
		@age = new_age
	end
	
	def sexchange(new_sex)
		@sex = new_sex
	end
=end
	# def introduce()
		# print "I am #{@name}, I am #{@age} years old, I am #{@sex}. I own #{@income}\n"
	# end
	
	# def Human.home()
		# 'Earth'
	# end
	
	# def self.attr() 
		# 'human often eat sleep and ....'
	# end
# end

# class Man < Human
	# attr_accessor :huzi
	# def initialize(name, age, huzi)
		# super(name, age, 'man', 3000)
		# @huzi = huzi
	# end
# end

# class Woman < Human
	
	# def initialize(name, age, income)
		# super(name, age, 'woman', income)
	# end
# end

# class Shark
	# include Fish
# end
# tom = Man.new('tom',30,'black_huzi')
# tom.introduce()
# puts tom.huzi()

# kate = Woman.new('kate', 20, '888')
# kate.introduce()

# shark = Shark.new()
# puts shark.blood()
# puts shark.eat_milk()
# puts Human.home()
# puts Human.attr()
# tom = Human.new('tom', 30, 'male', 2000)
# tom.name= ('Tom chris') # attr_accessor定义的方法
# tom.age= 35
# tom.income = 5000
# puts tom.sex()
# tom.introduce()
# puts tom.income
# 不能直接Human.introduce() ,因为introduce是实例函数。要tom.introduce才行
# tom.name('Chris Tom')
# tom.age(33)
# tom.sex('unknown')
# tom.introduce()
# tom = Human.new('tom', 30, 'male')
# puts "tom's name is #{tom.name()}"
# puts "tom's age is #{tom.age()}"
# puts "tom's sex is #{tom.sex()}"
# kate = Human.new('kate', 20, 'female')
# puts "kate's name is #{kate.name()}"
# puts "kate's age is #{kate.age()}"
# puts "kate's sex is #{kate.sex()}"

module BuruAnimal
	def blood
		'warm'
	end
	
	def milk
		true
	end
end

module Fish
	def canswim?
		true
	end
	
	def milk
		false
	end
end

class Whale
	include BuruAnimal
	include Fish
end

white_whale = Whale.new
puts white_whale.canswim?
puts white_whale.blood
puts white_whale.milk