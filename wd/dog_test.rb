require 'test/unit'

class Dog
	def legs
		legs = 4
	end
	def say
		'wangwang'
	end
end

# TDD
class DogTest < Test::Unit::TestCase
	
	def test_dog_should_have_4_leg
		dog = Dog.new
		assert(dog.legs == 4, "need legs equal 4")
	end
	
	def test_dog_should_say_wangwang
		dog = Dog.new
		assert(dog.say == "wangwang")
	end
end # test suit => 用例组