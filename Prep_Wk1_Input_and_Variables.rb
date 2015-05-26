# Prep Work - Week 1
# Getting Input and Using Variables

#####
# Getting Input and Using Variables
# 1. Learn what Strings, Integers, Floats (floating point numbers), Symbols, and Booleans
# are.  Learn what values they can store.

# Strings
# Holds and manipulates an arbitrary sequence of bytes, typically characters.
# Can use .to_s to convert to a string.
puts "Hello"

# Integers
# Whole numbers, uses "Bignum" (big numbers?) and "Fixnum" (small numbers?)
# Can use .to_i to convert to an integer.
17 + 13

# Floats
# Represents fractional numbers. Always contain a decimal point.
# Can use .to_f to convert to a float.
100.0 / 25.0

# Symbols
# Represents names and some strings (like a variable name?). Created using :name or :"string"
# Can use .to_sym to convert to a symbol object.
# It's an object, and can save performance time. Also immutable.
example = :"symbol"
puts example

# Booleans
# True or False value. A logical operator.
question = true
answer = false
puts question
puts answer

# http://repl.it/lCy/3

#####
# Getting Input and Using Variables
# 2. Create a variable called name and store your name in it. Print this to the screen
# using puts, then do it again using string interpolation.
name = "Ciprianna"
puts name
puts "#{name}"

# http://repl.it/lCy/4

#####
# Getting Input and Using Variables
# 3. Create two variables and assign a number to each of them. Then create a third
# variable and assign it to the sum of the first two. Print all three to the screen
# like so: 3 + 7 = 10
var1 = 15
var2 = 23
var3 = var1 + var2
puts "#{var1} + #{var2} = #{var3}"

# http://repl.it/lCy/5

#####
# Getting Input and Using Variables
# 4. Do the same as #3, but see what happens if one of the numbers is a floating point
# number (e.g., 4.2).  What happens if they are both floating point numbers?

# One floating number
var1 = 15.5
var2 = 23
var3 = var1 + var2
puts "#{var1} + #{var2} = #{var3}"
# This converts the final number (var3) to a float.

# Two floating numbers
var1 = 15.5
var2 = 23.2
var3 = var1 + var2
puts "#{var1} + #{var2} = #{var3}"
# All numbers are floats.

# http://repl.it/lCy/6

#####
# Getting Input and Using Variables
# 5. Research the different truth values: true, false, and nil. What does nil mean
# within Ruby?

=begin
true and false are boolean operators. Can be used to evaluate the logic of an expression.
nil is treated as false in boolean context. Only false and nil are treated as false.
All other values are treated as true (even zero, an empty string, etc.).
=end

# http://repl.it/lCy/7

#####
# Getting Input and Using Variables
# 6. Use gets.chomp to collect input from the user and store it in a variable. Write a
# program that asks the user for their name, then print their name to the screen. Write
# a program that asks the user for their age, and then print that age to the screen.
puts "What is your name?"
name = gets.chomp
puts "Hello, " + name + "."
puts "How old are you?"
age = gets.chomp
puts "Wow, you don't look " + age + " years old."

# http://repl.it/lCy/8

#####
# Getting Input and Using Variables
# 7. gets.chomp collects input as strings (text). Learn how to use gets.chomp.to_i to
# collect integers, as well as gets.chomp.to_f to collect floating point numbers. What 
# happens if you try to call gets.chomp.to_i when a floating point number is entered?
# How about when a word or letter is entered? What happens if you use gets.chomp.to_f
# and input an integer? A word?

# Integer tests
puts "How old are you?"
age = gets.chomp.to_i
puts age
# If you put in a whole number, it works as planned
# If you put in a float, it rounds down to the nearest whole number.
# If you put in a string, it reads as zero.

# Float tests
puts "How old are you?"
age = gets.chomp.to_f
puts age
# If you put in a whole number, it collects it and outputs it as a float.
# If you put in a float, it collects it and outputs it as a float.
# If you put in a string, it reads it as 0.0 (still a float).

# http://repl.it/lCy/11

#####
# Getting Input and Using Variables
# 8. What is the difference between puts 1 + 1 and puts "1" + "1"? Why does this behavior
# happen?

=begin
When no quotes are used, Ruby is reading the numbers as integers and doing an operation
with the integers.
When the quotes are used, Ruby is reading the numbers as strings and using the operator
of the plus sign as string concatenation, rather than addition (2).
The output of the statement without quotes is addition, while that with quotes is
just putting the two inputs together as a joint string (11).
=end

puts 1 + 1
puts "1" + "1"

# http://repl.it/lCy/14