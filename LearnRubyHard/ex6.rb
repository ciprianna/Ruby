# Assigns a variable with a number.
types_of_people = 10
# Assigns a variable with a string, which calls in another variable.
x = "There are #{types_of_people} types of people."
# Assigns a variable with a string.
binary = "binary"
# Assigns a variable with a string.
do_not = "don't"
# Assigns a variable with a string, which calls two other variables.
# Twice here, there is a string within a string.
y = "Those who know #{binary} and those who #{do_not}."

# Prints variable x.
puts x
# Prints variable y.
puts y

# Prints a string, which calls a variable.
# String within a string.
puts "I said: #{x}."
# Prints a string, which calls a variable.
# String within a string.
puts "I also said: '#{y}'."

# Assigns a variable with a boolean value.
hilarious = false
# Assigns a variable with a string, which calls a variable.
joke_evaluation = "Isn't that joke so funny?! #{hilarious}"
# Prints variable joke_evaluation.
puts joke_evaluation

# Assigns a variable with a string.
w = "This is the left side of..."
# Assigns a variable with a string.
e = "a string with a right side."

# Prints and concatenates the variables.
puts w + e