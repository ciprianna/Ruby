# Week 2 - Control Flow, Decision Making, and Loops
# Conditionals and Boolean Logic

# Conditionals and Boolean Logic
# 1. Know how to use if, elsif, and else statements to create branching boolean
# logic trees.

puts "Choose a number:"
num = gets.chomp.to_i

if (num > 150 || num == 0)
	puts "You picked a weird number."
elsif num == 17
	puts "You picked my favorite number!"
elsif num < 0
	puts "A negative number, really?"
else
	puts "How boring."
end

# http://repl.it/mGU

#####
# Conditionals and Boolean Logic
# 2. Know how to use case and when statements to create switches.

puts "How old are you?"
age = gets.chomp.to_i

case age
when < 10
	puts "Aw, cute."
when 10..20
	puts "Young and dumb."
when 21
	puts "Enjoy the bar!"
when 22..30
	puts "Quarter-life crisis."
when 31..50
	puts "Living life!"
when 51..70
	puts "Enjoy looking at what you've done :) "
else
	puts "You're fantastic."
end

# http://repl.it/mGU/1

#####
# Conditionals and Boolean Logic
# 3. Write a program which prompts the user for a number, outputs "Valid" if the
# number is positive, or "Invalid" if the number is less than or equal to zero.

puts "Choose a number:"
num = gets.chomp.to_i

if num > 0
	puts "Valid"
else
	puts "Invalid"
end

# http://repl.it/mGU/2

#####
# Conditionals and Boolean Logic
# 4. Write a program which prompts the user for a number and outputs "Valid" if
# the number is between 1 and 10 (inclusive) and "Invalid" otherwise.

puts "Choose a number:"
num = gets.chomp.to_i

case num
when 1..10
	puts "Valid"
else
	puts "Invalid"
end

# http://repl.it/mGU/3

#####
# Conditionals and Boolean Logic
# 5. Write a program which prompts the user for an integer and outputs whether the
# integer is even or odd (hint: even numbers have a remainder of 0 when divided by
# 2; odd numbers have a remainder of 1 when divided by 2).

puts "Choose a number:"
num = gets.chomp.to_i

if num % 2 == 0
	puts "Your number is even."
else
	puts "Your number is odd."
end

# http://repl.it/mGU/4

#####
# Conditionals and Boolean Logic
# 6. Write a program which asks the user for 3 numbers and sorts them from least
# to greatest using nothing but if, elsif, and else statements. Output the results.

puts "Choose your first number:"
first = gets.chomp.to_i
puts "Now choose your second:"
second = gets.chomp.to_i
puts "And finally, your third number:"
third = gets.chomp.to_i

if first <= second
	if second <= third
		puts "#{first} #{second} #{third}"
	elsif third <= first
		puts "#{third} #{first} #{second}"
	else
		puts "#{first} #{third} #{second}"
	end
else
	if first <= third
		puts "#{second} #{first} #{third}"
	elsif third <= second
		puts "#{third} #{second} #{first}"
	else
		puts "#{second} #{third} #{first}"
	end
end

# http://repl.it/mGU/6

#####
# Conditionals and Boolean Logic
# 7. Write a program which prompts the user for an all-caps string and which then
# checks to see if that string is indeed all-caps.

puts "Yell something!"
caps = gets.chomp

if caps == caps.upcase
	puts "Great job."
else
	puts "I said YELL!"
end

# http://repl.it/mGU/7

#####
# Conditionals and Boolean Logic
# 8. Create a menu (perhaps for food or drinks?) which asks the user to input a
# number corresponding to their choice of item, and which then prints "Delivering 
# [that item]." Use a case statement. Make sure to account for invalid inputs
# using an else.

puts ("Menu".center(50))
puts ("1. Chocolate Shake".ljust(30) + "$1".rjust(20))
puts ("2. Chocolate Cake".ljust(30) + "$2".rjust(20))
puts ("3. Chocolate Cream Pie".ljust(30) + "$3".rjust(20))
puts ("4. Chocolate Bar".ljust(30) + "$1".rjust(20))
puts ("5. Chocolate Brownie".ljust(30) + "$2".rjust(20))

puts "Which numbered item would you like?"
choice = gets.chomp.to_i

case choice
when 1
	puts "Delivering a Chocolate Shake."
when 2
	puts "Delivering Chocolate Cake."
when 3
	puts "Delivering Chocolate Cream Pie."
when 4
	puts "Delivering a Chocolate Bar."
when 5
	puts "Delivering a Chocolate Brownie."
else
	puts "Sorry, that's not on our menu."
end

# http://repl.it/mGU/8

#####
# Conditionals and Boolean Logic
# 9. Learn how to use the ternary operator.

# Ternary operator is a shorthand if else statement.

puts "What's your favorite color?"
favcol = gets.chomp

favcol == "Blue" ? "Mine too!" : "Nice."

# Convenient for very simple, concise if else statements.

# http://repl.it/mGU/9

#####
# Conditionals and Boolean Logic
# 10. Learn how to use the unless keyword.

# The unless code is used with if else statements. The block of code will only
# execute unless the condition is true.  If it's false, it will not execute.

puts "Are you tired?"
tired = gets.chomp.downcase

if tired == "yes"
	tired = true
else
	tired = false
end

puts "Coffee must be working!" unless tired

# http://repl.it/mGU/10

#####
# Conditionals and Boolean Logic
# 11. Prompt the user for a positive odd number (or a positive even number, or...).
# Write a program that uses a nested if-statement to determine if the user's input
# fulfills the conditions.  Now write one that uses the logical operators (&& and/or
# ||) to do the same test, but in less time.

puts "Please enter a positive odd number."
oddpos = gets.chomp.to_i

=begin
if oddpos >= 0
	if oddpos % 2 == 1
		puts "Thank you."
	else
		puts "Invalid: You chose an even number."
	end
else
	puts "Invalid: You chose a negative number."
end
=end

if (oddpos >= 0 && oddpos % 2 == 1)
    puts "Thank you."
else
    puts "Invalid number."
end

# http://repl.it/m6X

#####
# Conditionals and Boolean Logic
# 12. Write a program that prompts the user for a date with a month, date, and year (all
# numerically expressed) and then verifies that this date exists (for example: 7 28 
# 2014 exists, but 22 34 1999 does not). Make sure to account for leap years. This program
# is easiest if you prompt for the month, date, and year separately.

puts "What date did you start kindergarten?"
puts "Month (numerical):"
month = gets.chomp.to_i
puts "Date:"
date = gets.chomp.to_i
puts "Year:"
year = gets.chomp.to_i

leapyear = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0))

puts leapyear

if ((month >= 1 && month <= 12) && (date >= 1 && date <= 31) && (year >= 1900 && 
year <= 2015))
	if ((month == 4 || month == 6 || month == 9 || month == 11) && date > 30)
		puts "You've chosen an invalid date."
	elsif month == 2
		if (leapyear == true && date > 29)
			puts "You've chosen an invalid date."
		elsif (leapyear != true && date > 28)
			puts "You've chosen an invalid date."
		else
			puts "Thank you."
		end
	else
		puts "Thank you."
	end
else
	puts "You've chosen an invalid date."
end

# http://repl.it/m6X/1

#####
# Conditionals and Boolean Logic
# 13. For any triangle, the lengths of any two legs must be greater than the length
# of the remaining leg. Write a program which prompts the user for the lengths of the
# legs of a triangle, and which outputs whether the triangle is, in fact, valid (i.e.,
# whether it fulfills the requirements above). Consider adding a test to see if the
# triangle is equilateral, isosceles, or scalene, and whether or not it is a right
# triangle (Hint: How would you determine which sides should be the legs and which side
# should be the hypotenuse?).

puts "Let's make a triangle."
puts "What's the length of the first leg?"
leg1 = gets.chomp.to_i
puts "What's the length of the second leg?"
leg2 = gets.chomp.to_i
puts "And the last leg's length?"
leg3 = gets.chomp.to_i

if ((leg1 + leg2 > leg3) && (leg1 + leg3 > leg2) && (leg2 + leg3 > leg1))
	puts "You have a valid triangle."

    if ((leg1 == leg2) && (leg1 == leg3))
	    puts "You have an equilateral triangle."
    elsif ((leg1 == leg2) || (leg1 == leg3) || (leg2 == leg3))
	    puts "You have an isosceles triangle."
    else
	    puts "You have a scalene triangle."
    end

    if ((leg1 > leg2) && (leg1 > leg3))
	    if (leg2**2 + leg3**2 == leg1**2)
		    puts "Your triangle is right."
	    else
		    puts "Your triangle does not contain a right angle."
	    end
    elsif ((leg2 > leg1) && (leg2 > leg3))
	    if (leg1**2 + leg3**2 == leg2**2)
		    puts "Your triangle is right."
	    else
		    puts "Your triangle does not contain a right angle."
	    end
    else
	    if (leg1**2 + leg2**2 == leg3**2)
		    puts "Your triangle is right."
	    else
		    puts "Your triangle does not contain a right angle."
	    end
    end

else
	puts "You're triangle isn't valid."
end

# http://repl.it/m6X/2

#####
# Conditionals and Boolean Logic
# 14. Using if, elsif, and else blocks, write a program which allows two users to
# each input their moves in "Rock, Paper, Scissors" and which determines the winner
# (or if a tie occurred).

puts "Player One! Choose Rock, Paper, or Scissors!"
player1 = gets.chomp.downcase
puts "Player 2!  Rock, Paper, or Scissors!"
player2 = gets.chomp.downcase

if ((player1 == "rock" || player1 == "paper" || player1 == "scissors") && ( player2 == "rock" || player2 == "scissors" || player2 == "paper"))
    if player1 == player2
        puts "Tie game!"
    elsif player1 == "rock"
	    if player2 == "paper"
		    puts "Player 2 wins!"
	    else
		    puts "Player 1 wins!"
	    end
    elsif player1 == "paper"
	    if player2 == "scissors"
		    puts "Player 2 wins!"
	    else
		    puts "Player 1 wins!"
	    end
    else
	    if player2 == "rock"
		    puts "Player 2 wins!"
	    else
		    puts "Player 1 wins!"
	    end
	end
else
    puts "You were supposed to type 'rock' 'paper' or 'scissors'!"
end

# http://repl.it/m6X/4