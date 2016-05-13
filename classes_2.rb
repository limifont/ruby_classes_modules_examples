# base class
class Mammal
	
	attr_accessor :gender, :name, :age, :alive
	# optional or multiple optional peramiters have to be at the end after the required ones
	def initialize(gender, name, age, alive = true)
		@gender = gender
		@name = name
		@age = age
		@alive = alive
	end

	#These are instance methods
	def speak
		puts 'I am a mammal...'
	end

	def increment_age(age = 1)
		@age += age
	end

	def kill
		@alive = false if @alive
	end

	#This is a class method
	def self.type_of_blood
		puts 'Mammals are warm blooded'
	end
end

# human
# elephant
# cat

linds = Mammal.new('female', 'Lindsey', 26)

linds.speak
linds.increment_age
puts linds.alive
linds.kill
puts linds.alive
Mammal.type_of_blood
