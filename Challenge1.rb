#Challenge 1

puts 'What is your name?'
name = gets.chomp
puts 'Hello, ' + name + '!'

#Challenge 2

puts 'Pick a number'
num1 = gets.chomp.to_i
puts 'Great.  Now pick another number.'
num2 = gets.chomp.to_i
sumnum = num1 + num2
puts 'Together, those numbers make ' + sumnum.to_s + '!'

#Challenge 3

password = 'kitty'
puts 'Guess the password:'
guess = gets.chomp

if guess == password
	puts 'Congratulations!  You\'re correct!'
else
	puts 'Sorry, that\'s incorrect.'
end

#Challenge 4

puts 'Pick a number:'

while true
    pick = gets.chomp.to_i
    pick_left = pick % 2
    if pick_left == 0
        puts 'Your number is even!'
        break
    else
        puts 'Your number is odd!'
        break
    end
end

#Challenge 5

array_in = ['Cats', 17, 47, 'Carrot', 'Kitten McFluffertons']

puts 'Here\'s your list:'
array_in.each do |items|
    puts '+ ' + items.to_s
end

#Challenge 6

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