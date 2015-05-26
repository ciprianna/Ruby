# Prep Work - Week 1
# Simple Data Manipulation

#####
# Simple Data Manipulation
# 1. Learn about Ruby operator precedence with regard to arithmetic. How does it compare to
# the Order of Operations (PEMDAS) you learned in school? Learn what each of the operators
# (listed below) does, then write a program that asks the user for two numbers, then outputs
# the result of each of these operators on those numbers. Make sure you can describe, in 
# your own words, what each operator does.

# Ruby operator precedence
=begin
The operator precedence in Ruby is similar to PEMDAS, however, it includes a few extra items.
Before mulitply and divide is the not, complement, and unary plus and minus.
After the addition and subtraction, there are several other operators based on logic or
assignment.
=end

=begin
Operators:
+ - Addition or concatenation
- - Subtraction
/ - Division
* - Multiplication
% - Modulo, which gives the remainder of division
** - Exponent
= - Assigns a variable
== - Tests if the right side is equal to the left side
<, >, <=, >= - Less than, greater than, less than or equal to, greater than or equal to
<=> - Tells if the object on the left is less than, equal to, or greater than the object
	   on the right, indicated with an output of -1, 0, or +1. Works with ordered objects.
	   or numbers.  Called the "comparible" operator. If not comparible objects, returns nil.

=end

puts "Pick a number: "
num1 = gets.chomp.to_i
puts "Pick a second number: "
num2 = gets.chomp.to_i

puts "Here's how your numbers can interact: "
puts "Addition"
puts num1 + num2
puts "Subtraction"
puts num1 - num2
puts "Division"
puts num1 / num2
puts "Multiplication"
puts num1 * num2
puts "What's the remainder in division?"
puts num1 % num2
puts "Exponent"
puts num1 ** num2
puts "Are they equal?"
puts num1 == num2
puts "Is the first number less than the second?"
puts num1 < num2
puts "So then is the first number greater than the second?"
puts num1 > num2
puts "How do they compare?"
puts num1 <=> num2

# http://repl.it/lCy/15

#####
# Simple Data Manipulation
# 2. Write a program that fetches a number from the user, then doubles it, then outputs
# the result.  Write a program that fetches a number from the user, squares it, then
# outputs the result.

puts "What's your favorite number?"
favnum = gets.chomp.to_i
favnumdoub = favnum * 2
favnumsq = favnum ** favnum
puts "That's " + favnumdoub.to_s + " if you double it."
puts "And it's " + favnumsq.to_s + " squared."

# http://repl.it/lCy/16

#####
# Simple Data Manipulation
# 3. Write a program that prompts the user for two integers, then displays the integer
# quotient and integer result to the screen, like so: 7 / 3 = 2 r 1. Consider using
# string interpolation to make your life easier.

puts "Choose a number: "
num1 = gets.chomp.to_i
puts "Now pick another number: "
num2 = gets.chomp.to_i
quotient = num1 / num2
remainder = num1 % num2
puts "#{num1} / #{num2} = #{quotient} r #{remainder}"

# http://repl.it/lCy/17

#####
# Simple Data Manipulation
# 4. Write a program that converts a mixed number (integer, numerator, denominator) into
# an improper fraction, e.g., 3 1/2 = 7/2. This problem is much easier if, instead of 
# dealing with the fraction as a whole, you handle it as a numerator and denominator
# separately.

puts "Give me an integer: "
integer = gets.chomp.to_i
puts "Give me a numerator of a fraction: "
numerator = gets.chomp.to_i
puts "Give me a denominator for your fraction: "
denominator = gets.chomp.to_i
impropertop = denominator * integer + numerator
puts "#{integer} #{numerator}/#{denominator} = #{impropertop}/#{denominator}"

# http://repl.it/lCy/18

#####
# Simple Data Manipulation
# 5. Write a program that takes a floating-point value (like 1.75) and returns it as
# a fraction (like 7/4). Hint: Look in Ruby's Float Class Documentation.

fraction = 1.75
puts fraction
puts fraction.to_r

# http://repl.it/lQW

#####
# Simple Data Manipulation
# 6. Write a program that takes a string, then uses the .upcase method to return the
# UPPERCASED version of that string, e.g., "hello".upcase => "HELLO".

puts "What's your pet's name?"
pet = gets.chomp.upcase
puts pet

# http://repl.it/lQW/1

#####
# Simple Data Manipulation
# 7. Write a program that collects an integer value for Fahrenheit temperature and then
# outputs the corresponding Celsius temperature.

puts "What's the temperature in Fahrenheit?"
temp = gets.chomp.to_f
cels = (temp - 32) * 5/9
puts "That's #{cels} degrees Celsius."

# http://repl.it/lQW/2

#####
# Simple Data Manipulation
# 8. Write a program that calculates how to break a monetary value (expressed as 43.21,
# that is, without the dollar sign) into the simplest possible change (expressed as 
# dollars, quarters, dimes, nickels, and pennies). "Simplest" change just means the
# fewest number of bills and coins possible for a given amount. As a hint, you'll need
# to use % and /. It may also be easiest to convert the money amount from being in
# terms of dollars to being in terms of pennies (for example, $43.21 is 4321 pennies).

puts "How much money do you have?"
money = gets.chomp.to_f
pennies = money * 100

if pennies >= 10000
	hundreds = (pennies / 10000).to_i
	pennies = pennies % 10000
end

if pennies >= 5000
	fifties = (pennies / 5000).to_i
	pennies = pennies % 5000
end

if pennies >= 2000
	twenties = (pennies / 2000).to_i
	pennies = pennies % 2000
end

if pennies >= 1000
	tens = (pennies / 1000).to_i
	pennies = pennies % 1000
end

if pennies >= 500
	fives = (pennies / 500).to_i
	pennies = pennies % 500
end

if pennies >= 100
	ones = (pennies / 100).to_i
	pennies = pennies % 100
end

if pennies >= 50
    fifty_cents = (pennies / 50).to_i
    pennies = pennies % 50
end

if pennies >= 25
    quarters = (pennies / 25).to_i
    pennies = pennies % 25
end

if pennies >= 10
    dimes = (pennies / 10).to_i
    pennies = pennies % 10
end

if pennies >= 5
    nickels = (pennies / 5).to_i
    pennies = pennies % 5
end

pennies = pennies.to_i

count = []
bills = {"Hundreds": hundreds, "Fifties": fifties, "Twenties": twenties, "Tens": tens,
 "Fives": fives, "Ones": ones, "Fifty_Cents": fifty_cents, "Quarters": quarters, 
 "Dimes": dimes, "Nickels": nickels, "Pennies": pennies}

bills.each {|key,value|
    if bills[key] != nil
        count.push("#{value} #{key}")
    end
}

puts "So that makes: "
puts count

# http://repl.it/lQW/5

#####
# Simple Data Manipulation
# 9. Implement the Pythagorean Theorem; prompt the user for two integers a and b, then
# find the output the corresponding value of c such that a**2 + b**2 = c**2. You'll
# need to use Math.sqrt() to find the value of c. Learn how to use the Math.hypot method
# and compare your answers between the two ways of solving the problem.

puts "Pick a number:"
a = gets.chomp.to_i
puts "Thanks. Please pick another:"
b = gets.chomp.to_i
c1 = a**2 + b**2
c = Math.sqrt(c1)
puts "The Math.sqrt Method: #{c}"

auto = Math.hypot(a, b)

puts "The Math.hypot Method: #{auto}"

# http://repl.it/l54

#####
# Simple Data Manipulation
# 10. Implement the distance formula: given two points (x1, y1) and (x2, y2), find the
# distance between those points. (Hint: this is just a special case of the Pythagorean
# Theorem). Solve it the long way, then solve it using Math.hypot.

puts "Please give me your first point (i.e., (x, y)):"
point1 = gets.chomp
point1 = point1.delete'()'
point1 = point1.split(',')
pointy1 = point1.pop
pointx1 = point1.pop


pointy1 = pointy1.to_f
pointx1 = pointx1.to_f
puts point1

puts "And the second point:"
point2 = gets.chomp
point2 = point2.delete'()'
point2 = point2.split(',')
pointy2 = point2.pop
pointx2 = point2.pop

pointy2 = pointy2.to_f
pointx2 = pointx2.to_f

puts pointx1
puts pointy1
puts pointx2
puts pointy2

=begin
puts "Pick a number:"
x1 = gets.chomp.to_i
puts "Thanks. Please pick another:"
y1 = gets.chomp.to_i
puts "And now a third:"
x2 = gets.chomp.to_i
puts "One more:"
y2 = gets.chomp.to_i
=end

c1 = (pointy2 - pointy1)**2 + (pointx2 - pointx1)**2
c = Math.sqrt(c1)
puts "The Math.sqrt Method: #{c}"

auto = Math.hypot((pointy2 - pointy1), (pointx2 - pointx1))

puts "The Math.hypot Method: #{auto}"

# http://repl.it/lws/4

#####
# Simple Data Manipulation
# 11. Write a program which prompts the user for the month, date, and year (four-digit)
# of a date (e.g., 7/28/2014, though consider prompting the user for numeric month,
# numeric date, and numeric year separately if that makes your life easier), and then
# implement Zeller's Congruence to determine the day of the week per the Gregorian
# Calendar. Your output should be an integer between 0 and 6 (inclusive).

puts "Please tell me the month (numeric):"

month = gets.chomp.to_i
puts "Please tell me the day of the month:"
day = gets.chomp.to_i
puts "And the year, please?"
year = gets.chomp.to_i

if (month == 1 || month == 2)
    year = year -1
    month = month + 12
end

j = year/100

weekday = (day + ((26 * (month + 1))/10) + year + (year/4) + (6 * j) + (year/400)) % 7

puts "The weekday was #{weekday}"
puts "0 = Saturday\n1 = Sunday\n2 = Monday\n3 = Tuesday\n4 = Wednesday\n5 = Thursday\n6 = Friday"

# http://repl.it/l54/3

#####
# Simple Data Manipulation
# 12. Write a program that collects a 4-digit integer from the user, then prints that
# integer back out with its digits separated by spaces (i.e., 4321 becomes 4 3 2 1). 
# Hint: you'll need to use the % (modulus) operator to split the digits apart.

puts "Please pick a 4-digit number:"
fourdig = gets.chomp.to_i

thous = fourdig / 1000
hunds = fourdig % 1000
hunds1 = hunds / 100
tens = hunds % 100
tens1 = tens / 10
singles = tens % 10
singles1 = singles / 1

puts "#{thous} #{hunds1} #{tens1} #{singles1}"

# http://repl.it/l54/4

#####
# Simple Data Manipulation
# 13. Write a program which prompts the user for miles driven and gallons of gas used
# and which then outputs the fuel efficiency (in miles per gallon).

puts "How many miles did you drive?"
miles = gets.chomp.to_i
puts "How many gallons did you use driving?"
galls = gets.chomp.to_i

fueleff = miles / galls
puts "You got #{fueleff} miles per gallon."

# http://repl.it/l54/5

#####
# Simple Data Manipulation
# 14. Write a program which prompts the user for distance travelled (miles) and time
# travelled (hours), and which then outputs the average speed.

puts "How many miles did you travel?"
miles = gets.chomp.to_i
puts "How many hours did you travel?"
hours = gets.chomp.to_i

mph = miles / hours

puts "That means you averaged around #{mph} miles per hour."

# http://repl.it/l54/6

#####
# Simple Data Manipulation
# 15. Write a program which prompts the user for two points (expressed as an (x, y)
# ordered pair), and which calculates the slope of the line between those two points.

puts "Please give me your first point (i.e., (x, y)):"
point1 = gets.chomp
point1 = point1.delete'()'
point1 = point1.split(',')
point1b = point1.pop
point1a = point1.pop


point1b = point1b.to_f
point1a = point1a.to_f
puts point1

puts "And the second point:"
point2 = gets.chomp
point2 = point2.delete'()'
point2 = point2.split(',')
point2b = point2.pop
point2a = point2.pop

point2b = point2b.to_f
point2a = point2a.to_f

puts point1a
puts point1b
puts point2a
puts point2b

slope = (point1b - point2b) / (point1a - point2a)

puts "The slope of your line is #{slope}"

# http://repl.it/liS/1

#####
# Simple Data Manipulation
# 16. Research the Float class's floor and ceil methods.  What do these do?

=begin
The float ceil (used as x.ceil) returns the smallest number greater than or equal to
the float number provided.
Ex.) 1.2.ceil => 2
The float floor (used as x.floor) returns the largest integer less than or equal to
the float number provided.
Ex.) 1.2.floor => 1
=end

# http://repl.it/liS/2

#####
# Simple Data Manipulation
# 17. Learn how to use the compound assignment operators. What do they do?
#	+=
#	-+
#	*=
#	/=
#	%=
#	**=
#	||=

=begin
The values assign the right side of the operator to the left, after performing the
given operation.
Examples:
10 += 15 => 35
10 -= 15 => -5
10 *= 15 => 150
10 /= 15 => 10.666667
10 %= 15 => 10
10 **= 15 => 1000000000000000
10 ||= 15 => 10	(left or right side is equal to the right side)
=end

# http://repl.it/liS/3

#####
# Simple Data Manipulation
# 18. Write a program which prompts the user for the A, B, and C coefficients of a 
# quadratic function, and which then puts those into the Quadratic Formula and outputs
# the two roots of that quadratic function. You'll need to learn how to use Math.sqrt.
# This problem is easier if you break the actual quadratic formula into several steps, 
# rather than trying to accomplish everything at once (use your knowledge of the order
# of operations!).

puts "Let's figure out the quadratic formula."
puts "Give me the A coefficient:"
acoef = gets.chomp.to_i
puts "And the B coefficient now:"
bcoef = gets.chomp.to_i
puts "Finally, the C coefficient:"
ccoef = gets.chomp.to_i

denom = 2 * acoef
under = (bcoef**2) - (4 * acoef * ccoef)
undersqr = Math.sqrt(under)
frontnum = -bcoef
numplus = (frontnum + undersqr)/denom
numneg = (frontnum - undersqr)/denom

puts "Your x solutions are #{numplus} and #{numneg}."

# http://repl.it/lws

#####
# Simple Data Manipulation
# 19. Write a program which swaps the value of two variables using a swap variable.

var1 = "This one"
var2 = "That one"
var1, var2 = var2, var1
puts var1
puts var2
# Called 'Parallel assignment'

# http://repl.it/lws/1

#####
# Simple Data Manipulation
# 20. (Advanced) Write a program which swaps the value of two variables without 
# using a swap variable. (This is a common interview question - as a hint, it involves
# nothing more than addition and subtraction).

var1 = "This one"
var2 = "That one"

var1 += var2
var2 = var1 - var2
var1 -= var2

puts var1
puts var2

# Don't think this can work for strings because you can't subtract a
# string from another. Would probably need a temp variable here.

# http://repl.it/lws/3
