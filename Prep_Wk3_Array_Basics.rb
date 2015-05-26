# Prep Work - Week 3
# Array Basics
#####

# Array Basics
# 1. Create an array that holds a variety of data (strings, integers, floats, booleans).
# Print that array to the screen.

testarr = ["cats", "kittens", 3, 7, true, 4.25, false]

puts testarr

# http://repl.it/nVl

#####
# Array Basics
# 2. Create an array. Prompt the user for an index, then print the array element
# at that index. What happens if the user tries to access a non-existent element?
# What happens if the user tries to use a floating point number or a word as the index?

testarr = ["cats", "kittens", 3, 7, true, 4.25, false]

puts "Which index should I look up for you?"
index_input = gets.chomp.to_i

puts testarr[index_input]

# If an index is passed which doesn't exist, nothing is returned.
# If the index is a floating point, it is rounded down to the nearest integer and that
# index is used.
# If the index is a word, the first element is passed.

# http://repl.it/nVl/1

#####
# Array Basics
# 3. Learn how to use the .length to determine how many elements are in an array.

testarr = ["cats", "kittens", 3, 7, true, 4.25, false]
puts testarr.length
testarr.push(17)
puts testarr.length

# http://repl.it/nVl/2

#####
# Array Basics
# 4. Use a while loop to iterate through an array, printing each element to the screen
# on its own line.

testarr = ["cats", "kittens", 3, 7, true, 4.25, false]
testarr_length = testarr.length
counter = 0

while counter < testarr_length
	testarr.each {|element|
		puts element
		counter += 1
	}
end

# http://repl.it/nVl/4

#####
# Array Basics
# 5. What is the difference between printing an array to the console with puts as
# opposed to using p? Why might you use one instead of the other?

testarr = ["cats", "kittens", "3", 7, true, 4.25, false]

puts testarr # shows each element on it's own line.
p testarr # shows the entire array on a single line, to include separators and brackets.

# If you want to see if an integer is entered as a string, you may use p to show
# exactly how the element was entered into the array.  Puts will print the elements
# without any formatting.

# http://repl.it/nVl/5

#####
# Array Basics
# 6. Learn how to use << to add elements to an array.

animals = []

animals << "tiger"
animals << "leopard"
animals << "jaguar"
animals << "bobcat"

puts animals

# http://repl.it/nVl/6

#####
# Array Basics
# 7. Learn how to use .push and .pop with arrays. What do each of these do?

animals = ["tiger", "leopard", "cow"]
puts animals
puts '-' * 10
animals.pop
puts animals
puts '-' * 10
animals.push("jaguar")
puts animals

# .push adds an element to the end of an array. Element added is 
# specified in the parentheses.
# .pop removes the last element from the array.
# Both of these methods permanently change the array.

# http://repl.it/nVl/7

#####
# Array Basics
# 8. What happens if you declare the array size without filling it with elements,
# i.e., if you do something like a = Array.new(5)? What's in the array?

animals = Array.new(5)
puts animals
animals[0]

# The array is filled with nil positions.  It is empty/nothing.

# http://repl.it/nVl/8

#####
# Array Basics
# 9. Write a program which prompts the user for a number, and which then stores the
# positive integer factors of that number in an array. For extra credit, iterate
# over this array, starting with the first factor greater than 1, and remove any
# factors that are divisible by that factor. At this point, you should have a list
# of prime factors of a number.

puts "Give me a positive integer:"
prime_factors = gets.chomp.to_i

while prime_factors <= 0
    puts "Choose a positive integer:"
    prime_factors = gets.chomp.to_i
end

factorlist = []

for i in 1..prime_factors
	if prime_factors % i == 0
		factorlist.push(i)
	end
end

puts "The factors of your number are: #{factorlist}"

factorlist.each {|prime|
	if prime > 1
	    factorlist.delete_if {|evaluate|
	        evaluate != prime &&
	        evaluate % prime == 0
	    }
	end
}

puts "The prime factors of your number are: #{factorlist}"

# http://repl.it/nVl/9

#####
# Array Basics
# 10. Two numbers are co-prime if and only if they share no common prime factors
# (remember that 1 is not a prime number); for example, even though neither 81 nor
# 125 are prime numbers, they share no common prime factors, and thus can be
# considered to be co-prime. Modify the program you wrote in the previous step
# to determine if two numbers (supplied by the user) are co-prime.

puts "Let's check if two numbers are co-prime."

puts "Give me a positive integer:"
co_prime_one = gets.to_i

while co_prime_one <= 0
    puts "Choose a positive integer:"
    co_prime_one = gets.to_i
end

puts "Give me a second positive integer:"
co_prime_two = gets.to_i

while co_prime_two <= 0
    puts "Choose a positive integer:"
    co_prime_two = gets.to_i
end

factorlist_one = []

for i in 1..co_prime_one
	if co_prime_one % i == 0
		factorlist_one.push(i)
	end
end

puts "The factors of your first number are: #{factorlist_one}"

factorlist_one.each {|prime|
	if prime > 1
	    factorlist_one.delete_if {|evaluate|
	        evaluate != prime &&
	        evaluate % prime == 0
	    }
	end
}

puts "The prime factors of your first number are: #{factorlist_one}"

factorlist_two = []

for i in 1..co_prime_two
	if co_prime_two % i == 0
		factorlist_two.push(i)
	end
end

puts "The factors of your second number are: #{factorlist_two}"

factorlist_two.each {|prime|
	if prime > 1
	    factorlist_two.delete_if {|evaluate|
	        evaluate != prime &&
	        evaluate % prime == 0
	    }
	end
}

puts "The prime factors of your second number are: #{factorlist_two}"

co_prime = ""

factorlist_one.each {|match|
	if match > 1
		if factorlist_two.include?(match)
			co_prime = false
		else
			co_prime = true
		end
	end
}

if co_prime == true
	puts "Your numbers are co-prime."
else
	puts "Your numbers are not co-prime."
end

# http://repl.it/n4l

#####
# Array Basics
# 11. Imagine that you have a hallway which has 500 switches, and that each switch has
# a corresponding bulb right next to it. All the switches start in the "off" position.
# You start at switch #1 and count up by 1's, flipping every switch until you get to
# the end. Then you come back to the beginning, and repeat the process starting at
# switch #2 and flipping every second switch (and so on until you are all the way done
# with the hallway). By the time you start with the 500th switch, thus completing the
# process, which switches are on, and which ones are off? Use an array with 501 elements
# to simulate the hallway (ignore element 0), as well as a nested loop structure to
# simulate this problem. As a hint, it may be easiest to simulate the switches as booleans,
# though you could use strings, symbols, integers, or any number of other methods. With
# the switches that are on, what common numeric property makes those ones left on?

lights_on = Array.new(501, true)

counter = 2
=begin
lights_on[127] = false
puts lights_on.index(false)
puts lights_on.fetch(127)
lights_on[127] = !lights_on[127]
puts lights_on[127]
=end

while counter <= 501
    lights_on[1..501].each_index {|index|
            if index % counter == 0
                lights_on[index] = !lights_on[index]
            end
    }
    counter += 1
end

lights_on.each_with_index {|on, index|
    if on == true
        puts index
    end
}

# The switches which remain on after running this pattern are the perfect squares 
# (1 ** 1, 2 ** 2, 3 ** 3, etc.).

# http://repl.it/n4l/2

#####
# Array Basics
# 12. Learn how to create a multi-dimensional array. Learn how to access elements
# within the multi-dimensional array.

multi_data = [[1, 2, 3], ["a", "b", "c"], [true, false, true]]

puts multi_data

multi_data.each {|array|
    array.each {|element|
        puts element
    }
}

# http://repl.it/nf2

#####
# Array Basics
# 13. Re-implement the Fibonacci sequence, but this time do it with an array; each array
# element will be the sum of the previous two elements. Remember that the 0th Fibonacci
# term is 0, and the 1st Fibonacci term is 1.

puts "Which Fibonacci number would you like to see?"
Fib = gets.chomp.to_i

while Fib < 0
	puts "Which Fibonacci number would you like to see?"
	Fib = gets.chomp.to_i
end

fib_counter = 2
fibonacci = [0, 1]


while fib_counter <= Fib
    fibonacci.push((fibonacci.fetch(fib_counter - 1)) + (fibonacci.fetch(fib_counter - 2)))
        fib_counter += 1
end

puts "Your Fibonacci number is:"
puts fibonacci.last
fibonacci

# http://repl.it/nf2/1

#####
# Array Basics
# 14. Implement the Rational Roots Theorem; store your polynomial in an array of its
# coefficients. For example, 5x4 - 3x3 + 2x - 3 would be represented as [5, -3, 0, 2, -3]
# (since there is no x2 term, the coefficient there is 0). Then store your p and q
# values each in their own array before testing each combination of values. Consider
# creating an array for all of the p/q values, then use the Array class's .uniq method
# to eliminate all duplicates. Make sure your p/q array is full of floats, rather than
# full of rounded integers.

puts "This is your polynomial shape:"
puts "ax4 + bx3 + cx2 + dx + e"
puts "Choose values for the coefficients:"
puts "For x4:"
p_value = gets.chomp.to_i
puts "For x3:"
b_value = gets.chomp.to_i
puts "For x2:"
c_value = gets.chomp.to_i
puts "For x:"
d_value = gets.chomp.to_i
puts "For the integer:"
q_value = gets.chomp.to_i

puts "Your polynomial is: #{p_value}x4 + #{b_value}x3 + #{c_value}x2 + #{d_value}x + #{q_value}"

p_factors = []

for i in 1..p_value
	if p_value % i == 0
		p_factors.push(i)
	end
end

q_factors = []

for i in 1..q_value
	if q_value % i == 0
		q_factors.push(i)
	end
end

puts "The factors of the p_value are: #{p_factors}"
puts "The factors of the q_value are: #{q_factors}"

# How to handle negatives...? p_value..1?  put a negative sign?
# Need to make each a float
# Need to create a joint array out of all of the fractions.

#####
# Array Basics
# 15. Use the solutions heuristic for the n-Queens Problem to generate solutions for
# any user-generated value of n greater than or equal to 4. This program is probably
# easier with a two-dimensional n by n array. Output the results and test manually.

#####
# Array Basics
# 16. Write a program which prompts the user for a 3x3 grid of numbers; test to see
# if the grid fulfills the properties of a Magic Square.

#####
# Array Basics
# 17. Use the Array's .sample method to randomly select an element from the array.

phonetic = ["alpha", "bravo", "charlie", "delta", "echo", "foxtrot"]

phonetic.sample
# Randomly samples a single element

phonetic.sample(3)
# Will randomly sample three elements and output them

# http://repl.it/nr0

#####
# Array Basics
# 18. Use the Array's .sample method to simulate an AI in Rock-Paper-Scissors (hint:
# create an array of possible opponent moves). You'll need to build out the rest of
# the Rock-Paper-Scissors game as well.

puts "You vs. the Computer in Rock-Paper-Scissors. Choose:"
user_input = gets.chomp.downcase

while (user_input != "rock") && (user_input != "paper") && (user_input != "scissors")
    puts "Choose only 'rock' 'paper' or 'scissors' please:"
    user_input = gets.chomp.downcase
end

ai_choices = ["rock", "paper", "scissors"]

ai_input = ai_choices.sample

puts "The computer chose #{ai_input}"

if user_input == "rock" && ai_input == "rock"
	puts "Tie game!"
elsif user_input == "rock" && ai_input == "paper"
	puts "The computer wins!"
elsif user_input == "rock" && ai_input == "scissors"
	puts "You win!"
elsif user_input == "paper" && ai_input == "rock"
	puts "You win!"
elsif user_input == "paper" && ai_input == "paper"
	puts "Tie game!"
elsif user_input == "paper" && ai_input == "scissors"
	puts "The computer wins!"
elsif user_input == "scissors" && ai_input == "rock"
	puts "The computer wins!"
elsif user_input == "scissors" && ai_input == "paper"
	puts "You win!"
else
	puts "Tie game!"
end

# http://repl.it/nr0/12

#####
# Array Basics
# 19. 