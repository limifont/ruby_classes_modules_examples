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
		raise 'You must implement this in a subclass'
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



# These are sub classes
# human
class Human < Mammal
	def initialize(gender, name, age, alive, hair_color)
		super(gender, name, age, alive)
		@hair_color = hair_color
	end

	def speak
		puts "Esto no es ingles."
	end
end


# elephant
class Elephant < Mammal
	def initialize(gender, name, age, alive)
		super(gender, name, age, alive)
	end

	def speak
		puts "Trumpeting..."
	end
end

# cat
class Cat < Mammal
	def initialize(gender, name, age, alive, fur_color)
		super(gender, name, age, alive)
		@fur_color = fur_color
	end

	def speak
		puts "Meow..."
	end
end




linds = Human.new('female', 'Lindsey', 26, true, 'Brown')

linds.speak
linds.increment_age
puts linds.alive
linds.kill
puts linds.alive
Mammal.type_of_blood

jax = Cat.new('Male', 'Jax', 2, true, 'B&W')
jax.speak

dumbo = Elephant.new('Male', 'Dumbo', 1, true)
dumbo.speak
puts jax.kill











