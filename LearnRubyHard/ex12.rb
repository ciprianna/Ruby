# User Input with Numbers #
print "Give me a number: "
# Converts the input to an integer.
number = gets.chomp.to_i
# Could also use .to_f instead to convert the input to a float.

bigger = number * 100
puts "A bigger number is #{bigger}."

print "Give me another number: "
another = gets.chomp
# Converts the variable to an integer and assigns that as a new variable.
number = another.to_i

smaller = number / 100
puts "A smaller number is #{smaller}."