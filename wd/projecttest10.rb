DEBUG = 1
require 'test/unit'
require 'selenium-webdriver'

class Dog
	def legs
		4
	end
	
	def says
		'wangwang'
	end
end #Dog

# TDD
class DogTest < Test::Unit::TestCase
	
	def test_dog_should_have_4_leg
		dog = Dog.new
		assert(dog.legs == 4, 'dog should have 4 legs.')
	end
	
	def test_dog_says_wangwang
		dog = Dog.new
		assert(dog.says == 'wangwang', 'dog should says wangwang.')
	end
end # test suit => 用例组