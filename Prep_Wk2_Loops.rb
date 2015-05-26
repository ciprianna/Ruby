# Week 2 Prep Work
# Loops
#####

# Loops
# 1. Write a program that uses a loop (any type) to count from 1 to 10 on-screen.

n = 1
while n <= 10
	puts n
	n = n + 1
end

for i in 1..10
	puts i
end

# http://repl.it/mjR

#####
# Loops
# 2. Write a program that uses a loop (any type) to count down from 10 to 1 on-screen.

n = 10
while n >= 1
	puts n
	n -= 1
end

# http://repl.it/mjR/1

#####
# Loops
# 3. Write a program that counts from 1 to 100 by 2's. Now make it work by 3's. Now
# have it count from 1 to 100 by any (positive) increment the user desires.

n = 1

puts "Pick a number to count by:"
increment = gets.chomp.to_i

while increment <= 0
	puts "Pick a positive number to count by:"
	increment = gets.chomp
end

=begin
# For 2
while n <=100
	puts n
	n += 2
end
=end

=begin
# For 3
while n <=100
	puts n
	n += 3
end
=end

while n <=100
	puts n
	n += increment
end

# http://repl.it/mjR/2

#####
# Loops
# 4. Learn how to use ranges (both inclusive and exclusive) to do numeric iteration.

for i in 1..10
	puts i
end
# Prints 1 through 10 - inclusive

for i in 1...10
	puts i
end
# Prints 1 through 9 - exclusive

# http://repl.it/mjR/5

#####
# Loops
# 5. Write a program which prompts the user for a positive odd number, and which keeps
# prompting the user until they successfully input such a number.

puts "Please choose a positive odd number."
odd = gets.chomp.to_i

while (odd % 2 == 0 || odd < 0)
	puts "Please choose a positive odd number."
	odd = gets.chomp.to_i
end

# http://repl.it/mjR/4

#####
# Loops
# 6. Implement the Collatz Conjecture. Print out each step of the process, and keep
# track of how many steps it takes to arrive at 1.

puts "Choose a number"
collatz = gets.chomp.to_i

counter = 0

while collatz <= 0
	puts "Choose a number"
	collatz = gets.chomp.to_i
end

while collatz != 1
	counter = counter + 1
	puts collatz
	if collatz % 2 == 0
		collatz = collatz / 2
	else
		collatz = collatz * 3 + 1
	end
end

puts "Your number took #{counter} iterations to get to 1."

# http://repl.it/mjs

#####
# Loops
# 7. Write a program which prints the integer factors of a positive integer (for 
# example, the integer factors of 28 are 1, 2, 4, 7, 14, and 28).

puts "Choose a positive integer:"
factor = gets.chomp.to_i

while factor <= 0
    puts "Choose a positive integer:"
    factor = gets.chomp.to_i
end

factorlist = []

for i in 1..factor
	if factor % i == 0
		factorlist.push(i)
	end
end

puts "The number you chose has the following factors:"
puts factorlist

# http://repl.it/mjs/2

#####
# Loops
# 8. Write a program which, for any positive integer n, figures out n!. For example,
# 7! is 7 * 6 * 5 * 4 * 3 * 2 * 1.

puts "Choose a positive integer."
factorial = gets.chomp.to_i
num = 1

while factorial >= 1
	num = factorial * num
	factorial = factorial - 1
end

puts num

# http://repl.it/mve

#####
# Loops
# 9. Write a program which asks the user to enter a "password" (hardcoded in the code
# itself). After a three unsuccessful tries, the program should exit.

puts "Enter password:"
guess = gets.chomp
password = "kitten"

counter = 1

while guess != "kitten" && counter <= 2
	counter = counter + 1
	puts "Incorrect."
	puts "Enter password:"
	guess = gets.chomp
end

if guess == "kitten"
    puts "Logging in."
else
    puts "No soup for you."
end

# http://repl.it/mve/1

#####
# Loops
# 10. Write a program which displays the nth Fibonacci term to the screen. For the 
# purpose of this program , the first five Fibonacci terms are 0, 1, 1, 2, 3.

puts "Which Fibonacci number would you like to see?"
Fib = gets.chomp.to_i

while Fib < 0
	puts "Which Fibonacci number would you like to see?"
	Fib = gets.chomp.to_i
end

final = 0
placeholder = 0
second = 1
counter = 0

while Fib >= 1 && counter <= (Fib - 2)
	final = placeholder + second
	placeholder = second
	second = final
	counter += 1
end

puts final

# http://repl.it/mve/2

#####
# Loops
# 11. Write a program which prompts the user for a string of text and then prints that
# string out vertically, i.e., one character per line.

puts "What do you want to say?"
vertical = gets.chomp.to_a

vertical = vertical.chars.to_a

vertical.each do |letter|
	puts letter
end

# http://repl.it/nDr

#####
# Loops
# 12. Go back to your date validator you wrote in Step 12 of the previous step; write
# a program which prompts the user for a valid date, and then keeps prompting them
# until they divulge that date.

leapyear = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0))
result = ""

while result == "invalid" || result == ""
    puts "What date did you start kindergarten?"
	puts "Month (numerical):"
	month = gets.chomp.to_i
	puts "Date:"
	date = gets.chomp.to_i
	puts "Year:"
	year = gets.chomp.to_i

    if ((month >= 1 && month <= 12) && (date >= 1 && date <= 31) && (year >= 1900 && year <= 2015))
	    if ((month == 4 || month == 6 || month == 9 || month == 11) && date > 30)
		    result = "invalid"
		    puts "You've chosen an invalid date."
	    elsif month == 2
		    if (leapyear == true && date > 29)
			    result = "invalid"
			    puts "You've chosen an invalid date."
		    elsif (leapyear != true && date > 28)
			    result = "invalid"
			    puts "You've chosen an invalid date."
		    else
			    result = "valid"
			    puts "Thank you."
		    end
	    else
		    result = "valid"
		    puts "Thank you."
	    end
    else
	    result = "invalid"
	    puts "You've chosen an invalid date."
    end
end

# http://repl.it/nDr/2

#####
# Loops
# 13. Write a program which takes a multi-digit positive integer and which adds those
# digits together, again and again, until it arrives at a number between 1 and 9. For
# example: 12345 >> 1 + 2 + 3 + 4 + 5 >> 15 >> 1 + 5 >> 6

puts "Input a positive number:"
combine = gets.chomp.to_i

numlength = Math.log10(combine).to_i + 1


parts = 10 ** (numlength - 1)


final = 0
final2 = combine

while final2 > 9
    while numlength > 1
        digit = combine / parts
        combine = combine % parts
        final += digit
        if combine != 0
            numlength = Math.log10(combine).to_i + 1
        else
            numlength -= 1
        end
        parts = 10 ** (numlength - 1)
    end
    final2 = final + combine
    if final2 > 9
        numlength = Math.log10(final2).to_i + 1
        parts = 10 ** (numlength - 1)
        combine = final2
        final = 0
    end
end

puts final2

# http://repl.it/nRf

#####
# Loops
# 14. A number is divisible by 3 if the sum of its digits is a multiple of 3 (this
# process can be repeated as many times as you'd like). Write a program which prompts
# the user for a positive integer, then sum the digits of that integer (repeatedly,
# if necessary), until you end up with a 1 digit number; if that number is a 3, 6,
# or 9, you have a multiple of 3. Otherwise, you do not. Verify your work with the
# % operator.

puts "Input a positive number:"
combine = gets.chomp.to_i

multiple = combine % 3
puts "The remainder of #{combine} divided by 3 is #{multiple}"

numlength = Math.log10(combine).to_i + 1


parts = 10 ** (numlength - 1)


final = 0
final2 = combine

while final2 > 9
    while numlength > 1
        digit = combine / parts
        combine = combine % parts
        final += digit
        if combine != 0
            numlength = Math.log10(combine).to_i + 1
        else
            numlength -= 1
        end
        parts = 10 ** (numlength - 1)
    end
    final2 = final + combine
    if final2 > 9
        numlength = Math.log10(final2).to_i + 1
        parts = 10 ** (numlength - 1)
        combine = final2
        final = 0
    end
end

puts final2

if final2 % 3 == 0
	puts "Your number is a multiple of 3."
else
	puts "Your number is not a multiple of 3."
end

# http://repl.it/nRf/1

#####
# Loops
# 15. Use a nested loop (loops inside of loops) structure to create a multiplication
# table.

for row in 1..9
	line = ""
	for col in 1..9
		line += "#{row * col}\t"
	end
	puts line
end

# http://repl.it/nRf/2

#####
# Loops
# 16. Use your Rock-Paper-Scissors program from the previous collection of exercises
# and re-write it so that there is a best of 3. 

puts "Player One! Choose Rock, Paper, or Scissors!"
player1 = gets.chomp.downcase
puts "Player 2!  Rock, Paper, or Scissors!"
player2 = gets.chomp.downcase

p1wins = 0
p2wins = 0

while (p1wins < 2 && p2wins < 2)

	if ((player1 == "rock" || player1 == "paper" || player1 == "scissors") && ( player2 == "rock" || player2 == "scissors" || player2 == "paper"))
		if player1 == player2
			puts "Tie game!"
		elsif player1 == "rock"
			if player2 == "paper"
				puts "Player 2 won that round."
				p2wins += 1
			else
				puts "Player 1 won that round."
				p1wins += 1
			end
		elsif player1 == "paper"
			if player2 == "scissors"
				puts "Player 2 won that round."
				p2wins += 1
			else
				puts "Player 1 won that round."
				p1wins += 1
			end
		else
			if player2 == "rock"
				puts "Player 2 won that round."
				p2wins += 1
			else
				puts "Player 1 won that one."
				p1wins += 1
			end
		end
	else
		puts "You were supposed to type 'rock' 'paper' or 'scissors'!"
	end
	
    if  (p1wins < 2 && p2wins < 2)
        puts "Next round"
	    puts "Player One! Choose Rock, Paper, or Scissors!"
        player1 = gets.chomp.downcase
        puts "Player 2!  Rock, Paper, or Scissors!"
        player2 = gets.chomp.downcase
    end
    
    if p1wins >= 2
        puts "Player 1 wins the game!"
    end
    
    if p2wins >= 2
        puts "Player 2 wins the game!"
    end
end

# http://repl.it/nRf/4

#####
# Loops
# 17. Implement the divisibility by 7 check. Check your work using the % operator.

puts "Choose a number:"
seven = gets.chomp
seven = seven.chars.to_a

seven = seven.each do |num|
    num = num.to_i
end

last = seven.pop

puts last
puts seven


=begin
numlength = Math.log10(seven).to_i + 1
parts = 10 ** (numlength - 1)
final = 0

while numlength > 1
    digit = seven / parts
    seven = seven % parts
    final += digit
    if seven != 0
        numlength = Math.log10(seven).to_i + 1
    else
        numlength -= 1
    end
    parts = 10 ** (numlength - 1)
end

puts seven
double = seven * 2
=end

#####
# Loops
# 18.

#####
# Loops
# 19. 

 
# If there's time, add the while loop to only allow valid numbers before equations.