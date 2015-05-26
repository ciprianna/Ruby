# Prep Work - Week 3
# Hashes

#####
# Hashes
# 1. What are hashes used for? Why might you use a hash?

=begin
Hashes are used as dictionaries.  They work when you don't care about order, and when
you want to access a value using a key. This allows you to access entries by a string, 
symbol, etc., without knowning the precise index number it falls in, or what order the
information is in. You can instead access information by an associated string or key
that is easier to access.
=end

# http://repl.it/nr0/2

#####
# Hashes
# 2. Learn how to create a Hash that contains at least one key/value pair. What is the
# difference between a key and a value? What types of data can be used as keys? Can
# you have duplicate keys in a hash? What about duplicate values? What types of data
# can be used as values? Given a key, how do you access the corresponding value in the
# hash? Given a value, how do you look up the keys that have that value? How would you
# add additional keys to the hash?

beatles = {"here" => "comes the sun", "blackbird" => "singing in the dead of night",
"walrus" => "ku ku katchoo", "strawberry" => "fields forever", "love" => "is all you
need", "jude" => "don't be afraid", "yesterday" => "love was such an easy game to play",
"eleanor" => "rigby", "darling" => "comes the sun"}

# A key is used to look up the value. You can only have unique keys, but you can have
# redundant values. Keys can be any type of object, but are most often, strings or symbols.
# Anything can be used as the value in a hash.

# To access a value:
puts beatles["here"]

# To access a key: 
puts beatles.key("comes the sun")

# To access all keys with the same value:
puts beatles.select {|key, value| value == "comes the sun"}

# To add additional keys:
beatles["help"] = "I need somebody"
puts beatles

# http://repl.it/nr0/3

#####
# Hashes
# 3. Simulate a dictionary with a hash - the key should be the word, and the value
# should be the definition. Write a program which takes a word from the user and
# prints the corresponding definition (if one exists in your dictionary) to the
# screen. If no definition exists (how would you tell if this is the case), it
# should tell the user "Sorry, no definition exists" (or something like that).

dictionary = {"apartment" => "A place to live.", "book" => "A piece of literature.", "cat" => "An adorable animal.", "dog" => "An overly-active animal.", "end" => "When something is over.", "fax" => "Old-school communication.", "globe" => "A spherical representation of the earth.", "hammer" => "A tool used to nail things.", "ink" => "Used to print on paper.", "juice" => "Liquid from a fruit.", "kindergarten" => "The first year of school.", "laptop" => "A portable computer.", "map" => "A graphical depiction of a geographic location.", "notebook" => "A collection of paper.", "office" => "A location for work.", "paper" => "Made from trees.", "quack" => "The sound a duck makes.", "random" => "A sequence without a given pattern.", "subject" => "The topic of discussion.", "typewriter" => "Old-school keyboard and printer.", "user" => "The person who runs and interacts with a program.", "video" => "Motion picture.", "white-out" => "Covers up mistakes made with pen.", "x-ray" => "An internal image of the body.", "yoohoo" => "A brand of chocolate milk.", "zonkos" => "A joke shop in the Wizarding World of Harry Potter."}

dictionary.default = "Sorry, no definition exists."

puts "What word would you like to define?"
define = gets.chomp.downcase

puts dictionary[define]

# http://repl.it/nr0/5

#####
# Hashes
# 4. Learn what symbols are (and how they're different from strings). Create a hash
# which uses at least two symbols as keys, and where each key has a value. Learn how
# to convert between strings and symbols.

beatles = {here: "comes the sun", blackbird: "singing in the dead of night", walrus: "ku ku katchoo", strawberry: "fields forever", love: "is all you need"}

# In a hash, the colon comes after the symbol name. Calling symbols as keys works the 
# same as normal keys.

puts beatles[:love]

# Symbols are strings and id's. They're immutable and are faster because they can be
# accessed from their id's and do not change throughout the entirety of the program.
# Symbols are important as identities for something specific in the program.

# To convert between a symbol and a string

love_string = :love.to_s
love_symbol = love_string.to_sym

# http://repl.it/nr0/7

#####
# Hashes
# 5. What is the difference between an array and a hash? Why might you use an array
# instead of a hash? Why might you use a hash instead of an array?

=begin
Arrays and hashes are similar, as they both store data in a structured way. Arrays, however,
order the data they store and use an "index" to access each element. The indices are
ordered from 0..n.  Hashes allow you to use any object as the index, i.e., any object
can be used to access the element. Hashes take a key and a value associated with each
other. The key is used to access the value and each key in the hash must be unique. An
array would be efficient if the order of the elements matter, and if the elements don't
need to be associated with a specific key. Hashes would work better if you want to associate 
two items together, like a dictionary. It's useful for when the order doesn't matter.
=end

# http://repl.it/nr0/8

#####
# Hashes
# 6. Hashes are often used to represent attributes that do not have corresponding
# behaviors (i.e., the data doesn't do anything). For example, I could create a Driver's
# License hash that contains a :name, :id, and :age key. Adjust the values to match your
# own information (or information corresponding to someone you just made up).

drivers_license = {name: "Ciprianna", id: "H123456", age: 26}

# http://repl.it/nr0/13

#####
# Hashes
# 7. Modify your Rock-Paper-Scissors game so that instead of using if/elsif/else
# blocks to determine the winner, it instead uses a hash as a referee. First create
# a hash which has "rock", "paper", and "scissors" as keys, and the moves they win
# against as the corresponding values. Treat player 1's moves as the key, and then
# check to see if player 2's move matches the corresponding value.

puts "Let's play Rock-Paper-Scissors."
puts "Player 1, choose:"
player1 = gets.chomp.downcase
puts "Now Player 2:"
player2 = gets.chomp.downcase

while (player1 != "rock") && (player1 != "paper") && (player1 != "scissors")
    puts "Player 1, only 'rock' 'paper' or 'scissors' please:"
    player1 = gets.chomp.downcase
end

while (player2 != "rock") && (player2 != "paper") && (player2 != "scissors")
    puts "Player 2, only 'rock' 'paper' or 'scissors' please:"
    player2 = gets.chomp.downcase
end

player1_choices = {"rock" => "scissors", "paper" => "rock", "scissors" => "paper"}

if player1 == player2
    puts "Tie game!"
elsif player1_choices[player1] == player2
	puts "Player 1 wins!"
else
	puts "Player 2 wins!"
end

# http://repl.it/nr0/11

#####
# Hashes
# 8. Learn how to iterate through a hash using key/value pairs - at least initially,
# use a for-each-style loop to iterate through a hash and print each key/value
# pair to the console.

dictionary = {"apartment" => "A place to live.", "book" => "A piece of literature.", "cat" => "An adorable animal.", "dog" => "An overly-active animal.", "end" => "When something is over.", "fax" => "Old-school communication.", "globe" => "A spherical representation of the earth.", "hammer" => "A tool used to nail things.", "ink" => "Used to print on paper.", "juice" => "Liquid from a fruit.", "kindergarten" => "The first year of school.", "laptop" => "A portable computer.", "map" => "A graphical depiction of a geographic location.", "notebook" => "A collection of paper.", "office" => "A location for work.", "paper" => "Made from trees.", "quack" => "The sound a duck makes.", "random" => "A sequence without a given pattern.", "subject" => "The topic of discussion.", "typewriter" => "Old-school keyboard and printer.", "user" => "The person who runs and interacts with a program.", "video" => "Motion picture.", "white-out" => "Covers up mistakes made with pen.", "x-ray" => "An internal image of the body.", "yoohoo" => "A brand of chocolate milk.", "zonkos" => "A joke shop in the Wizarding World of Harry Potter."}

dictionary.default = "Sorry, no definition exists."

dictionary.each {|key, value|
	puts key + ": " + value}

# http://repl.it/oAo

#####
# Hashes
# 9. Learn how to use the .keys method to get an array full of the possible keys in
# a hash. Learn how to use the .values method to get the values in a hash.

beatles = {"here" => "comes the sun", "blackbird" => "singing in the dead of night",
"walrus" => "ku ku katchoo", "strawberry" => "fields forever", "love" => "is all you
need", "jude" => "don't be afraid", "yesterday" => "love was such an easy game to play",
"eleanor" => "rigby", "darling" => "comes the sun"}

# This creates an array of all the keys in the hash
puts beatles.keys

# This creates an array of all the values in a hash; can be duplicate
puts beatles.values

# http://repl.it/oAo/1