# Prep Work - Week 4
# Methods
#####

# Methods
# 1. Learn how to create a method.

def name_print (name_var, cute_var)
	puts "#{name_var}, you're so #{cute_var}!"
end

name_print "Kitty", "cute"
name_print "Calypso", "adorbs"
name_print "Harry", "pretty"

# http://repl.it/oR0

#####
# Methods
# 2. Learn the meanings of each of these terms regarding methods:
#
# Method signature/name
#	Method signature is the unique identification of the method. It includes the name of
#	the method, and the number, types, and order of its parameters.
# Parameters
#	Every method can have no parameters, or multiple parameters. They can be ordinal.
#	You can also pass a default value to the parameters. Parameters are passed when the
#	method is defined. Number of parameters can be optional, indicated by a * before the
#	parameter name.
# Arguments (How are parameters and arguments different?)
#	Arguments are passed when the method is called. They should match the number of 
#	required parameters when the method was defined.
# Method call
#	A method call is when you use the method you've defined. In Ruby, it's just by
#	typing the method name, and passing the required parameters after the name.
# Return values
#	By default, Ruby methods will return the value of the last statement. To get around
#	this, use a return statement in the method to return the values you want to see.
# Method body
#	Method body is the part of the method definition that tells the method what to do.
#	The action the method should take after the name/parameters are told, and before end.

# http://repl.it/oR0/1

#####
# Methods
# 3. Create a method called hello_world which takes no arguments and which prints
# Hello, World to the screen. Call this method.

def hello_world
	puts "Hello, World"
end

hello_world

# http://repl.it/oR0/2

#####
# Methods
# 4. Create a method called greeting which takes a single argument (a name) and prints
# Hello, #{name} to the screen. Call this method with a few different names.

def greeting (name)
	puts "Hello, #{name}"
end

greeting "Ciprianna"
greeting "Calypso"
greeting "Harry"

# http://repl.it/oR0/3

#####
# Methods
# 5. Create a method called sum_these_numbers which takes two integers as arguments
# and prints their sum to the screen.

def sum_these_numbers (int1, int2)
	sum = int1 + int2
    puts sum
end

sum_these_numbers 17, 3
sum_these_numbers 80, 20

# http://repl.it/oR0/4

#####
# Methods
# 6. Modify sum_these_numbers (written before) so that instead of printing the sum, it
# returns the sum back to where the method was called. Print the sum (calculated by
# the method) to the screen, but don't do that printing inside of the method.

def sum_these_numbers (int1, int2)
	int1 + int2
end

puts sum_these_numbers 17, 3
puts sum_these_numbers 80, 20

# http://repl.it/oR0/5

#####
# Methods
# 7. Learn the difference between implicit and explicit returns in Ruby. How do you
# return values without the return keyword?

# Implicit values are returned when there is no "return" statement within the method.
# By default, Ruby prints the last value called by the method. If only one value is
# created, no return statement is needed to show that result.
# Explicit returns are used with the "return" statement in the method itself. It 
# tells you exactly what should be returned after the method is called. Some Rubyists
# prefer implicit returns only, however, some say that explicit helps with readability.
# An explicit return statement ends the method though, so caution should be taken.

# http://repl.it/oR0/6

#####
# Methods
# 8. Create a method called is_even, which takes a single integer, and which then
# returns true if the number is even, and false otherwise.

def is_even (int)
	if int % 2 == 0
		return true
	else
		return false
	end
end

puts is_even 7
puts is_even 8
puts is_even 1982
puts is_even 2007

# http://repl.it/oR0/7

#####
# Methods
# 9. Read about the Single Responsibility Principle. Be able to define it in your own
# words, preferably in just 1-2 sentences. Recognize that the difference between the
# two sum_these_numbers methods (created in the previous two steps), is that one
# calculates the sum AND does the output, whereas the other just calculates the sum.
# Which one better adheres to the SRP?

# The SRP states that each class should have one job that it is trying to accomplish.
# This is so the class can be more robust, and that only certain classes need to change
# if there is a change to the input/format/etc., rather than a lengthy class with multiple
# actions. As this relates to the sum_these_numbers problems, the second one better
# adheres to the SRP because it has one job, and that is to add. The first program has
# two jobs, to add and to print. Would that then imply that multiple, small, simple
# methods are preferred to do complex things?...

# http://repl.it/oR0/8

#####
# Methods
# 10. Write a method which calls another method, then uses its return value.

def sum_these_numbers (int1, int2)
	int1 + int2
end

def square_the_sum (int1, int2)
    sum = sum_these_numbers int1, int2
    sum ** 2
end

puts square_the_sum 7, 3
puts square_the_sum 2, 5

# http://repl.it/oR0/9

#####
# Methods
# 11. Learn how to use the yield command (within methods), and then call a method with
# a block. This is particularly useful for iterators. As you become a better programmer,
# you'll find that knowing when to use this technique is a matter of intuition and
# experience, rather than anything very prescribed.

# The yield command allows you to enter a statement, and potentially parameters, 
# wherever "yield" is stated within a block of code.

def hello
	yield
end

hello {puts "Hello, world!"}

def hello_animal
	yield "kitten"
	puts "Hello, pup"
	yield "bunny"
end

hello_animal {|i| puts "Hello, #{i}"}

# http://repl.it/o1i

#####
# Methods
# 12. Look at problems from the previous steps, particularly ones where the program takes
# some information, does some stuff, then comes back with a result. Turn a few of these
# into methods. Almost all of the problems listed in the previous sections can be
# re-written to use methods and to adhere to the single responsibility principle. Go
# ahead and use multiple methods, if necessary.

# Simple Data Manipulation # 3
def remainder (int1, int2)
	quotient = int1 / int2
	remainder = int1 % int2
	puts "#{int1} / #{int2} = #{quotient} r #{remainder}"
end

remainder 7, 3

# To put Simple Data Manipulation # 3 into the SRP...I think...
def quotient (int1, int2)
	int1 / int2
end

def remainder (int1, int2)
	int1 % int2
end

def print_division (int1, int2)
	puts "#{int1} / #{int2} = #{quotient int1, int2} r #{remainder int1, int2}"
end

print_division 7, 3

# Simple Data Manipulation # 14
def mph (miles, hours)
	miles.to_f / hours.to_f
end

mph 120, 1.75

# http://repl.it/o1i/1

#####
# Methods
# 13. (Advanced) Do some research into recursive methods (methods which call
# themselves). Research recursive solutions to the Fibonacci Sequence generator
# (which you've seen already), and try implementing them. Recursive methods are
# extremely useful for iterating over certain types of data structures, but they
# won't be useful to you just yet.

# One solution from a blog
def fibonacci(n)
    if n < 2
        n
    else
        fibonacci(n-1) + fibonacci(n-2)
    end
end
 
puts fibonacci(6)
puts fibonacci(10)
puts fibonacci(1)

# http://repl.it/o1i/2