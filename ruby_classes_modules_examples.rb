require 'pry'
# require 'babbler'


# puts 'YAY Friday!'

# def keep_coding
#   puts 'Pop question: Are you going to keep coding over the weekend? (yes / no)'
#   input = gets.strip.downcase

#   # if input == 'yes' ? (puts 'Good answer'): (puts 'You serious, bro? Do you even code?') keep_coding


#   if input == 'yes'
#     puts 'Good answer!'
#   else
#   	puts Babbler.babble
#     # puts 'You serious, bro? Do you even code?'
#     keep_coding
#   end
# end

# keep_coding 


class Person
	# It has to match the instance variable
	# attr_accessor - read & write
	# attr_reader - ready only
	# attr_writer - write only
	attr_accessor :first_name, :last_name, :age, :gender
	# Every time you call 'New' on a class, it calls the initialize
	# def initialize (first_name, last_name, age, gender)
	# 	@first_name = first_name
	# 	@last_name = last_name
	# 	@age = age
	# 	@gender = gender
	# end

	def initialize
		puts 'What is the first name?'
		@first_name = gets.strip
		puts 'What is the last name?'
		@last_name = gets.strip
		puts 'What is the age?'
		@age = gets.strip.to_i
		puts 'What is the gender?'
		@gender = gets.strip
	end
end

# This is creating an instance of this person
# ('Lindsey', 'Font', 26, 'Female')
puts 'Welcome Player 1! Please enter your information:'
player_1 = Person.new   
puts 'Is this information correct?'
puts "First name: #{player_1.first_name}\nLast name: #{player_1.last_name}\nAge: #{player_1.age}\nGender: #{player_1.gender}"
validate = gets.strip
if validate == 'yes'
	puts 'Awesome.'
else
	player_1 = Person.new
end

#('Brandon', 'Font', 32, 'Male')
puts 'Welcome Player 2! Please enter your information:'
player_2 = Person.new 
puts player_2.first_name
puts player_2.last_name
puts player_2.age
puts player_2.gender














