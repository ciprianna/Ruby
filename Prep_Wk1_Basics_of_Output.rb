#Prep Work
#Omaha Code School
#Weeks 1 - 4
#Basics of Output

#Basics of Output
#1.  Write a program that prints "Hello World!" to the console.
puts "Hello World!"

# http://repl.it/kFY

#####
#Basics of Output
#2.  Write a program that prints "Hello" and "World" to the screen, both on their own lines, and each
#  with their own puts statement
puts 'Hello'
puts 'World'

# http://repl.it/kFY/1

#####
#Basics of Output
#3.  Do the same as in the previous problem, but with only one print statement (Hint:  Use \n).
puts "Hello\nWorld"
# http://repl.it/kFY/2

#####
#Basics of Output
#4. Figure out what the different escape sequences do.  Do escape sequences work the same regardless
#  of if strings are single or double-quoted?  For example: would puts "Hello\nWorld" output the same as
#  puts 'Hello\nWorld'?
=begin
single quotes can only support two escape sequences:
	\' = single quote
	\\ = single backslash
Everything else between single quotes is treated literally
=end

=begin
double quotes allow for more escape sequences:
	\" = double-quote
	\\ = single backslash
	\a = bell/alert #originally used to alert users of the end of a line on a typewriter
	\b = backspace
	\r = carriage return #similar to newline; used for white space and rewrites on same line
	\n = newline
	\s = space
	\t = tab
=end

#puts vs print
#Puts prints a new line for each string of text
#Example
puts "Say", "Hello" #Prints each string to its own line
# =>Say
# =>Hello
# Whereas print will only put a new line between characters if you specify it with \n
print "Say", "Hello"
# =>SayHello

# http://repl.it/kuC

#####
# Basics of Output
# 5. Use string interpolation to do output. Do this with numbers and text. Does it matter
# whether you do string interpolation with a double-quoted string (like "#{1 + 1}")
# versus single-quoted strings (like '#{1 + 1}')?

puts "Here's an answer: #{1 + 1}"
puts 'Here\'s an answer: #{1 + 1}'
puts "I am looking for: #{'food'}."
puts 'I am looking for: #{'food'}.'

# http://repl.it/kuC/2

#####
# Basics of Output
# 6. (Advanced) Use format sequences (like %s) to do some output. Does it work with
# double-quoted strings? With single-quoted strings?

# Double-quotes
puts "Do you have a %s?" % 'cow'
puts "How many cows? %d" % 17
puts "So you have not one %s, but %d?!" % ['cow', 17]

# Single-quotes
puts 'Do you have a %s?' % 'cow'
puts 'How many cows? %d' % 17
puts 'So you have not one %s, but %d?!' % ['cow', 17]

# They appear to work the same, at least for %s strings and %d numbers
# http://repl.it/kuC/3

#####
# Basics of Output
# 7. What happens if you use string concatenation, i.e., puts "hel" + "lo"? What
# does concatenation mean?

puts "hel" + "lo"
#prints the strings together

puts 'hel' + 'lo'
#still works for single-quotes

# http://repl.it/kuC/4

#####
# Basics of Output
# 8. What happens if you try to multiply a string, i.e., puts "Hello" * 3. Can you
# divide a string? e.g., "hello" / "world"? Can you subtract, e.g., "hello" - "lo"?

# Multiplies the string, but smashes the words together.
puts "hello" * 3
# Does not work, nonsensical.
# puts "hello" / "world"
# Does not work...maybe it can't know the order? Or how to look within
# a string?
# puts "hello" - "lo"

# http://repl.it/kuC/5