# Prep Work - Week 4
# Objects and Classes

#####
# Objects and Classes
# 1. Learn the definition of a class in Ruby. Learn the definition of an object in Ruby.

=begin
A class describes the type of object you are working with in Ruby. A class gives the
description of what sorts of things the objects can do, methods, and what attributes it
can have. Must begin with a capital letter and be CamalCase.

To create a class, type:
class ExampleClass
end

An object is an instance of a class that you are working with. Every object is a type of
class, which defines how that object can be manipulated.

To create an object, type:
object_example = ExampleClass.new
=end

# http://repl.it/o1i/3

#####
# Objects and Classes
# 2. Learn the difference between attribute and class variables.

=begin
Instance variables become the properties of a specific object that is created within a class.
Every object's attributes are assigned individually. 
A class variable is shared across all instances of a class. It must be initialized when
the class is created.
=end

# http://repl.it/ofx

#####
# Objects and Classes
# 3. Learn the difference between state and behavior (with regard to Object Oriented
# Programming).

# The state of an object is its current status (descriptive; attributes), whereas the 
# behavior of an object is what action the object is taking from its current state
# (action; methods).

# http://repl.it/ofx/1

#####
# Objects and Classes
# 4. Create a Dog class -- dogs should have names, ages, breeds, and should be able to
# bark (#{name} says "WOOF") and walk (#{name} walks around). Create getter and setter
# methods for the attributes. When you create your Dog objects, you'll have to manually
# set the name, age, and breed of each one.

# Defines the new class
class Dog
    # Initializes the attributes
	def initialize (name, age, breed)
		@dog_name = name
		@dog_age = age
		@dog_breed = breed
	end
	
	# Getter methods for the attributes
	def print_name
		@dog_name
	end
	
	def print_age
		@dog_age
	end
	
	def print_breed
		@dog_breed
	end
	
	# Setter methods for the attributes
	def set_age=(value)
		@dog_age = value
	end
	
	def set_breed=(value)
		@dog_breed = value
	end
	
	# Class methods
	def bark
		print "#{@dog_name} says 'WOOF'!"
	end
	
	def walk
		print "#{@dog_name} goes on a walk."
	end
end

# Creates a new object of class Dog, with attributes set
ender = Dog.new("Ender", "5", "Wiener Dog")

# Calling the getter methods to set variables for the object
ender_name = ender.print_name()
ender_age = ender.print_age()
ender_breed = ender.print_breed()
puts "The dog's name is #{ender_name}."
puts "He is #{ender_age} years old."
puts "He is a #{ender_breed}."

# Using the setter methods to change the attribute values
ender.set_age = 7
ender.set_breed = "Doberman"

# Using the getter methods again, now that the values have changed.
ender_age = ender.print_age()
ender_breed = ender.print_breed()

puts "No, he is really #{ender_age} years old."
puts "And he is actually a #{ender_breed}."

# Using the class methods
puts ender.bark
puts ender.walk

snickers = Dog.new("Snickers", "13", "Min-Pin")
jewel = Dog.new("Jewel", "4", "Black Lab")

snickers_age = snickers.print_age()
snickers_name = snickers.print_name()
puts "#{snickers_name} is an old pup - she's #{snickers_age}!"
puts snickers.bark
jewel_age = jewel.print_age()
jewel_name = jewel.print_name()
puts "#{jewel_name} is an excited dog, by comparison. She's only #{jewel_age}!"
puts jewel.walk

# http://repl.it/oqR/1

#####
# Objects and Classes
# 5. Within the Dog class, create an initialize method which takes the name, age, and
# breed as parameters, and which then sets the corresponding attribute variables to
# the passed in parameters

# See above.

#####
# Objects and Classes
# 6. Learn how to use attr_accessor, attr_reader, and attr_writer. What are they used
# for? Why would you use one instead of the other? Add an attr_accessor to your Dog
# class, and get rid of the getter and setter methods you've set.

=begin
attr_reader allows you to create an instance variable in a class without using the
initialize method. It allows you to read what the attribute is for an object. It
works like the "getter" method. You would use this only when you want to allow users
to read what the attribute values are for an object, but not change them.
attr_reader :name

attr_writer allows you to create an instance variable in a class that allows you to
write the value of the parameter for a specific object once the object is created. It
acts like the "setter" method. You would use this if you want to allow the users to
input the values for each object manually.
attr_writer :name

attr_accessor does both reading and writing at the same time for variables created 
within the method. You would use this when you want to allow both read/write access.
attr_accessor :name
=end

# Defines the new class
class Dog
    def initialize(name, age, breed)
        @dog_name = name
        @dog_age = age
        @dog_breed = breed
    end
    
    # Allows read/write access
    attr_accessor :dog_name
    attr_accessor :dog_age
    attr_accessor :dog_breed
	
	# Class methods
	def bark
		print "#{@dog_name} says 'WOOF'!"
	end
	
	def walk
		print "#{@dog_name} goes on a walk."
	end
end

# Creates a new object of class Dog, with attributes set
ender = Dog.new("Ender", "5", "Wiener Dog")


puts "The dog's name is #{ender.dog_name}."
puts "He is #{ender.dog_age} years old."
puts "He is a #{ender.dog_breed}."

# Redefine attribute values
ender.dog_age = 7
ender.dog_breed = "Doberman"

puts "No, he is really #{ender.dog_age} years old."
puts "And he is actually a #{ender.dog_breed}."

# Using the class methods
puts ender.bark
puts ender.walk

snickers = Dog.new("Snickers", "13", "Min-Pin")
jewel = Dog.new("Jewel", "4", "Black Lab")

puts "#{snickers.dog_name} is an old pup - she's #{snickers.dog_age}!"
puts snickers.bark
puts "#{jewel.dog_name} is an excited dog, by comparison. She's only #{jewel.dog_age}!"
puts jewel.walk

# http://repl.it/oqR/2

#####
# Objects and Classes
# 7. Now that you've got your objects, create an array of them. Use .each to iterate
# over the array of dogs and have each dog bark.

class Dog
    def initialize(name, age, breed)
        @dog_name = name
        @dog_age = age
        @dog_breed = breed
    end
    
    # Allows read/write access
    attr_accessor :dog_name
    attr_accessor :dog_age
    attr_accessor :dog_breed
	
	# Class methods
	def bark
		print "#{@dog_name} says 'WOOF'!"
	end
	
	def walk
		print "#{@dog_name} goes on a walk."
	end
end

ender = Dog.new("Ender", "5", "Wiener Dog")
snickers = Dog.new("Snickers", "13", "Min-Pin")
jewel = Dog.new("Jewel", "4", "Black Lab")

dogs = Array.new
dogs.push(ender, snickers, jewel)
dogs.each {|dog| puts dog.bark}

# http://repl.it/oqR/4

#####
# Objects and Classes
# 8. Create a hash of Dog objects. The key should be the dog's name, and the value for
# each key should be the dog with that name. Can you use your previously created array
# of dogs, plus the .each method, to automatically create this hash?

class Dog
    def initialize(name, age, breed)
        @dog_name = name
        @dog_age = age
        @dog_breed = breed
    end
    
    attr_accessor :dog_name
    attr_accessor :dog_age
    attr_accessor :dog_breed
	
	def bark
		print "#{@dog_name} says 'WOOF'!"
	end
	
	def walk
		print "#{@dog_name} goes on a walk."
	end
end

ender = Dog.new("Ender", "5", "Wiener Dog")
snickers = Dog.new("Snickers", "13", "Min-Pin")
jewel = Dog.new("Jewel", "4", "Black Lab")

dogs = Array.new
dogs.push(ender, snickers, jewel)

dogs_hash = {}

dogs.each {|dog| 
	dogs_hash[dog.dog_name] = dog
}
puts dogs_hash

# http://repl.it/pC8

#####
# Objects and Classes
# 9. Create an array of dogs (who have various ages); iterate over this array (using
# .each and a block), and print out the names of all dogs who are less than 5 years old.

class Dog
    def initialize(name, age, breed)
        @dog_name = name
        @dog_age = age
        @dog_breed = breed
    end
    
    attr_accessor :dog_name
    attr_accessor :dog_age
    attr_accessor :dog_breed
	
	def bark
		print "#{@dog_name} says 'WOOF'!"
	end
	
	def walk
		print "#{@dog_name} goes on a walk."
	end
end

ender = Dog.new("Ender", "7", "Doberman")
snickers = Dog.new("Snickers", "13", "Min-Pin")
jewel = Dog.new("Jewel", "4", "Black Lab")
doby = Dog.new("Doby", "5", "Wiener Dog")
molly = Dog.new("Molly", "10", "Wiener Dog")
lotus = Dog.new("Lotus", "2", "Pit Bull")

dogs = Array.new
dogs.push(ender, snickers, jewel, molly, lotus)

dogs.each {|dog|
	dog.dog_age = dog.dog_age.to_i
	if dog.dog_age < 5
		puts dog.dog_name
	end
}

# http://repl.it/pC8/2

#####
# Objects and Classes
# 10. Go back to your Rock Paper Scissors game -- recreate this game (with two human
# players) using a Player class which has name and score attributes, and which can 
# generate moves. Create a Game script (this doesn't need to be a class, but it can
# be), and have that game create 2 players, set their names and scores, and have
# those players battle.