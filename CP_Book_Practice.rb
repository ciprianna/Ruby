#Ruby Practice

#puts = print
puts 1.0 + 2.0
puts 2.0 * 3.0
puts 5.0 - 8.0
puts 9.0 / 2.0

puts 5 * (12-8) + -15
puts 98 + (59872 / (13 * 8)) * -51

#Hours in a year
puts 365 * 24
#Number of seconds in a decade
puts ((60 * 24) * 365) * 10
#My age
puts (((60.0*60.0)*24.0) * 365.0) * 26.5
#Author's age (given in seconds to begin with)
puts 1025000000 / (60 * 60 * 24 * 365)
#Difference in age now vs age at time the book was written
puts 32 - (800000000 / (60 * 60 *24 * 365))
#Author's age at the time the book was written
puts 32 - 7

#Print strings
puts 'Hello World!'
puts "   " #Empty strings
puts 'Good-bye.'
puts 'I like ' + 'apple pie.'  #Don't forget the space so the words don't directly join
#prints blink 4 times
puts 'blink ' * 4 
# \ escapes the apostrophe so it prints it as part of the string
puts 'You\'re swell!'
# \ also escapes itself
puts 'backslash at the end of a string: \\'
puts 'up\\down'
puts 'up\down'

#Variables must start with a lower case letter in Ruby
my_string = '...you can say that again...'
puts my_string
puts my_string
name = 'Anya Christina Emmanuella Jenkins Harris'
puts 'My name is ' + name + '.'
puts "Wow!  " + name
puts "is a really long name!"

#Can reassign variables if they've been used, but replaces value
composer = 'Mozart'
puts composer + ' was "da bomb" in his day.'

composer = 'Beethoven'
puts 'But I prefer ' + composer + ', personally.'

#Variables can also be numbers/equations with stored results
my_own_var = 'Just another ' + 'string.'
puts my_own_var
my_own_var = 5 * (1 + 2)
puts my_own_var
#Variables cannot point to other variables

#Converting object types
var1 = 2
var2 = '5'
# .to_s converts the number to a string
puts var1.to_s + var2 #Output is '25'
# .to_i converts the string to an integer
puts var1 + var2.to_i #Output is 7
# .to_f converts the object to a float
puts '15'.to_f  #Output is 15.0
puts '99.999'.to_f  #Output remains the same
puts '99.999'.to_i #Output is 99
puts '5 is my favorite number!'.to_i #Output is 5
puts 'Who asked you about 5 or whatever?'.to_i #Output is 0 because it begins with a letter
puts 'Your momma did.'.to_f #Output is 0.00
puts 'stringy'.to_s #Output is 'stringy'
puts 3.to_i #Output is 3

#Interactive Programs
puts 'Hello there, and what\'s your name?'
#gets retrieves a string that the user types in. Get String.
name = gets.chomp
#the .chomp cuts off the "Enter" after the user types in a string
puts 'Your name is ' + name + '?  What a lovely name!'
puts 'Pleased to meet you, ' + name + '.  :)'

#Practice
puts 'What is your first name?'
firstname = gets.chomp
puts 'What is your middle name?'
middlename = gets.chomp
puts 'What is your last name?'
lastname = gets.chomp
puts 'Hello, ' + firstname + ' ' + middlename + ' ' + lastname + '!'

puts 'What is your favorite number?'
favnum = gets.chomp.to_i #Add the chomp and the .to_i at the end of the variable so it's stored there.
newnum = favnum + 1
#Must add the .to_s at the end here because it is "putting a string (puts)" 
# and the variables are integers above
puts 'Well, ' + favnum.to_s + ' is your favorite number, but ' + newnum.to_s + 
' is a bigger and better favorite number.'

#String play
varrev = 'stop'
puts varrev.reverse #Reverses the string, output would be pots
puts varrev.length.to_s #Gets the length of characters and must make it a string when used in puts
puts varrev.upcase #Makes the string upper case
puts varrev.downcase #Makes the string lower case
puts varrev.swapcase #Swaps the given case of the string
puts varrev.capitalize #Capitalizes only the first character

#Practice
wholename = firstname + ' ' + middlename + ' ' + lastname #With spaces included as characters
wholenamechar = firstname + middlename + lastname #No spaces
puts 'Your whole name is ' + wholenamechar.length.to_s + ' letters long!'

#Visual formatting
line_width = 50
puts ('Old Mother Hubbard'.center(line_width))
puts ('Sat in her cupboard'.center(line_width))
puts ('Eating her curds and whey,'.center(line_width))
puts ('When along came a spider'.center(line_width))
puts ('Who sat down beside her'.center(line_width))
puts ('And scared her poor shoe dog away.'.center(line_width))
#Centers the string along the previously defined line_width

str = '-->text<--'
puts (str.ljust(line_width)) #Left justified
puts (str.center(line_width)) #Centered
puts (str.rjust(line_width)) #Right justified
puts (str.ljust(line_width / 2) + str.rjust(line_width / 2)) #Divides the total line_width and 
#puts one on each side, left and right justified

#Practice
puts 'What do you WANT?'
employee = gets.chomp
puts 'WHADDYA MEAN "' + employee.upcase + '"?!? YOU\'RE FIRED!!'

#Table of contents
puts ('Table of Contents'.center(50))
puts ('Chapter 1:  Getting Started'.ljust(30) + 'Page 1'.rjust(20))
puts ('Chapter 2:  Numbers'.ljust(30) + 'Page 9'.rjust(20))
puts ('Chapter 3:  Letters'.ljust(30) + 'Page 13'.rjust(20))

#Comparisons
puts 1 > 2 #Returns false
puts 1 < 2 #Returns true
#Can also use >= <= == and !=
#Comparisons only directly compare the first character in a string and will read the numbers
# in order and capital letters are before all lower case letters.
 
 #Branching / if else
 puts 'Hello, what\'s your name?'
 name = gets.chomp
 puts 'Hello, ' + name + '.'
 
 if name == 'Jade'
	puts 'What a lovely name!'
end

 puts 'Hello, what\'s your name?'
 name = gets.chomp
 puts 'Hello, ' + name + '.'
 if name == 'Jade'
	puts 'What a lovely name!'
elsif name == 'Kitty' #Gives same result for the two specified names
	puts 'What a lovely name!'
end

#Does the same thing as the above code, with an OR statement
 puts 'Hello, what\'s your name?'
 name = gets.chomp
 puts 'Hello, ' + name + '.'
 if name == 'Jade' || name == 'Kitty'
	puts 'What a lovely name!'
end
# || is OR, && is AND, ! is NOT
	
puts 'I am a fortune-teller.  Tell me your name.'
name = gets.chomp

if name == 'Jade'
	puts 'I see great things in your future.'
else
	puts 'Your future is...oh my!  Look at the time!'
	puts 'I really have to go, sorry!'
end

#Loops
while true
	input = gets.chomp
	puts input
	if input == 'bye'
		break #breaks the while loop
	end
end
puts 'Come again soon!'

#Practice
while true
	puts 'What would you like to ask C to do?'
	request = gets.chomp
	
	puts 'You say, "C, please ' + request + '"'
	
	puts 'C\'s response:'
	puts '"C ' + request + '."'
	puts '"Papa ' + request + ', too."'
	puts '"Mama ' + request + ', too."'
	puts '"Ruby ' + request + ', too."'
	puts '"Nono ' + request + ', too."'
	puts '"Emma ' + request + ', too."'
	puts
	
	if request == 'stop'
		break
	end
end

#99 Bottles
bottles = 99
while true
	puts bottles.to_s + ' bottles of beer on the wall.'
	puts bottles.to_s + ' bottles of beer.'
	puts 'Take one down, pass it around.'
	bottles = bottles - 1
	puts bottles.to_s + ' bottles of beer on the wall.'
	puts ' '
	
	if bottles == 1
	    puts bottles.to_s + ' bottle of beer on the wall.'
	    puts bottles.to_s + ' bottle of beer.'
	    puts 'Take one down, pass it around.'
	    bottles = bottles - 1
	    puts bottles.to_s + ' bottle of beer on the wall.'
	end
	
	if bottles == 0
	    break
	end
end

#Deaf granny
puts 'What did you say there, youngin\'?'
grancount = 0
while true
	granresp = gets.chomp
	
	if granresp == granresp.upcase
		puts 'NO, NOT SINCE 1938!'
	elsif
		puts 'HUH?!  SPEAK UP, SONNY!'
	end
	
	if granresp == 'BYE'.chomp
	    grancount = grancount +1
	else grancount = 0
	end
	
	if grancount >= 3
	    puts 'BYE, SONNY!'
	    break
	end
end

#Arrars start at 0
array = []
array[0] = 'Hi'

#language example
languages = ['English', 'Norwegian', 'Ruby']

languages.each do |lang| # .each tells Ruby to look at every object in the array; it's an iterator
#Then do tells Ruby to manipulate the array object by object, which is called a new variable |lang|
#Then can use lang to refer to looking at the objects separately.
	puts 'I love ' + lang + '!'
	puts 'Don\'t you?'
end

puts 'And let\'s hear it for Java!'
puts '<crickets chirp in the distance>'

#Repeater example
3.times do #Tells it to print three times.
	puts 'Hip-hip-hooray!'
end

#Foods
foods = ['artichoke', 'brioche', 'caramel']

puts foods
puts
puts foods.to_s #smashes all of the objects in the array together in a single string
puts
puts foods.join(', ') #joins all the objects together, separated by commas
puts
puts foods.join(' :) ') + ' 8) ' #joins all of the objects together, separated by smileys and added a smiley at the end

#push pop
#push adds an object to the end of an array
#pop removes the last object from the array and tells you what it was
#They both CHANGE the array
#last just tells you what the last object was 
#example
favorites = []
favorites.push 'raindrops on roses'
favorites.push 'whiskers on kittens'

puts favorites[0] #Gives the first object
puts favorites.last #Gives the last object
puts favorites.length #Gives the length

puts favorites.pop #Tells you the last object and removes it.
puts favorites #Lists the array; only one object left now.
puts favorites.length #Gives the length

#Practice
#Sort a list
sortlist = []
puts 'Give me a list of words:'
while true
	join = gets.chomp
	sortlist.push join
	if join == ''
		break
	end
end
	
puts 'Here\'s your list in alphabetical order:'
puts sortlist.sort #sorts your list

#table of contents
#First time
puts ('Table of Contents'.center(50))
puts ('Chapter 1:  Getting Started'.ljust(30) + 'Page 1'.rjust(20))
puts ('Chapter 2:  Numbers'.ljust(30) + 'Page 9'.rjust(20))
puts ('Chapter 3:  Letters'.ljust(30) + 'Page 13'.rjust(20))

#Now
title = 'Table of Contents'

chapters = [['Getting Started', 1],['Numbers', 9], ['Letters', 13]]

puts title.center(50)
puts

chap_num = 1

chapters.each do |chap|
	name = chap[0]
	page = chap[1]
	
	beginning = 'Chapter ' + chap_num.to_s + ':  ' + name
	ending = 'Page ' + page.to_s
	
	puts beginning.ljust(30) + ending.rjust(20)
	chap_num = chap_num + 1
end

#Some arguments/methods take parameters to define how it's done
def say_moo number_of_moos #Defines a function that takes two parameters "say_moo" and "number_of_moos"
	puts 'mooooooo.....' * number_of_moos
end
#So this is how you would use the function
say_moo 3

#Another example
def double_this num #There are two parameters that need to be defined by these variables
	num_times_2 = num * 2 #They are called local variables because they're defined in the function
	puts num.to_s + ' doubled is ' + num_times_2.to_s #Those are num and num_times_2
end

double_this 44 #Prints 44 doubled is 88

#Function/Method practice
def ask question
	while true
		puts question
		reply = gets.chomp.downcase
			
		if (reply == 'yes' || reply == 'no')
			if reply == 'yes'
				answer = true
			else
				answer = false
			end
			break
		else
			puts 'Please answer "yes" or "no".'
		end
	end
	
	answer
end

puts 'Hello, and thank you for taking the time'
puts 'to help me with my experiment.'
puts 'Please answer a few questions'
puts 'with either a "yes" or a "no".'
puts

ask 'Do you like eating tacos?' #Asks for a response, but it isn't stored
ask 'Do you like eating burritos?' #this one isn't stored either
wets_bed = ask 'Do you wet the bed?' #This one is stored because it's the one we care about
ask 'Do you like eating chimichangas?'
ask 'Do you like eating sopapillas?'
puts 'Just a few more questions...'
ask 'Do you like drinking horchata?'
ask 'Do you like eating flautas?'
puts
puts 'DEBRIEFING:'
puts 'Thank you for taking this survey.'
puts 'It was an experiment about bed-wetting,'
puts 'and the questions about Mexican food'
puts 'were to throw you off.'
puts
puts wets_bed #Recalls the variable of interest
#Rewrite
def ask question
	while true
		puts question
		reply = gets.chomp.downcase
			
		if (reply == 'yes' || reply == 'no')
			if reply == 'yes'
				return true
			else
				return false
			end
		else
			puts 'Please answer "yes" or "no".'
		end
	end
end

puts 'Hello, and thank you for taking the time'
puts 'to help me with my experiment.'
puts 'Please answer a few questions'
puts 'with either a "yes" or a "no".'
puts

ask 'Do you like eating tacos?' #Asks for a response, but it isn't stored
ask 'Do you like eating burritos?' #this one isn't stored either
wets_bed = ask 'Do you wet the bed?' #This one is stored because it's the one we care about
ask 'Do you like eating chimichangas?'
ask 'Do you like eating sopapillas?'
puts 'Just a few more questions...'
ask 'Do you like drinking horchata?'
ask 'Do you like eating flautas?'
puts
puts 'DEBRIEFING:'
puts 'Thank you for taking this survey.'
puts 'It was an experiment about bed-wetting,'
puts 'and the questions about Mexican food'
puts 'were to throw you off.'
puts
puts wets_bed #Recalls the variable of interest

#Old Roman Numerals
def old_roman_numeral num
    roman = ' '
    
    roman = roman + 'M' * (num / 1000) #Starts with the greatest number possible, 
	# and captures what could be left over
    roman = roman + 'D' * (num % 1000 / 500) #Defines the leftovers as the new var and takes the 
	# remainders again for the next lowest Roman Numeral
    roman = roman + 'C' * (num % 500 / 100)
    roman = roman + 'L' * (num % 100 / 50)
    roman = roman + 'X' * (num % 50 / 10)
    roman = roman + 'V' * (num % 10 / 5)
    roman = roman + 'I' * (num % 5 / 1)
    roman #Final result after dividing by all the Roman Letters
end

puts old_roman_numeral 350

#Num count problem in steps
#First step - Count by 1
num = 0

while true
    puts num
    num = num + 1
    
    if num > 100
        break
    end
end
#Second step - Count by 2
num = 0

while true
	counter = 2
    puts num
    num = num + counter
    
    if num > 100
        break
    end
end
#Step 3 - Count by a submitted number
num = 0
puts 'Please pick a positive integer:'
counter = gets.chomp.to_i
while true
    puts num
    num = num + counter
    
    if num > 100
        break
    end
end
#Step 4 - Count by a submitted number, but have the program check the range
num = 0
puts 'Please pick a positive integer:'
counter = gets.chomp.to_i

while true
    if (counter < 1 || counter > 100)
        puts 'Sorry, that number doesn\'t work!'
        break
    end
    
    puts num
    num = num + counter
    
    if num > 100
        break
    end
end

#Long (multi-line) comments
=begin
all comment text
on each of these lines
=end

# .to_a turns object into an array
# can choose to split an object by lines, bytes, char
#example
poem.lines.to_a
#This takes a poem, splits it by lines, and puts the lines as objects in an array

#Adding an ! to the end of a method tells the method to impact just the object instead of making a copy
# using .include? "  " allows you to search a string to see if it includes whatever is placed in the quotes
# A "hash" is the same thing as a dictionary
# {} creates a hash
#Example
books = {} #empty
books["Gravity's Rainbow"] = :splendid
#Added a key to the hash called "gravity's rainbow" and related it to another word, as a symbol
# the word "splendid" is a symbol because it has a : in front of it
#Useful because they save space in the computer's memory if you need to keep reusing the word
#Now we can just type books["Gravity's Rainbow"] and it will show us the review of the book - splendid
books.keys #lists all the keys listed

Dir.entries "/" #Lists everything in the top directory/root
Dir["/*.txt"] #Only searches for text files in the root
File.open("/Home/file.txt", "a") do |f| #Opens a file in Home dir called "file.txt"
#then the file is appended with "a" to do something |f|, which is to append the file with added text
# Will show ... to prompt you to keep typing
#After that, type end on a fresh line to finish appending the open document
Cat #What's added
end
print File.read("/Home/file.txt") #Reads the file
File.mtime("/Home/file.txt") #Gives a time and date of the last time the file was changed
#Could add .hour after the file in parenthesis to get how many hours ago the file was changed

File.foreach #opens a file and hands each line of the file to the block
.split(': ') #Breaks a string into an array by removing the piece you pass it in the parenthesis
.strip #Removes spaces around a variable

#Single-quotes tell Ruby to ignore any called variables within them
#Double-quotes will call variables using #{}
# Calling variables using #{} or %{} -  %{} will give you a raw value, not a string