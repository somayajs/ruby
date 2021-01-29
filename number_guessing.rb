#!usr/bin/env ruby

#guess the number game
puts "what's your name?"
name = gets.chomp
puts "Hello #{name}"
puts "We are going to play a guessing game."
puts "I will choose a random number between 1 and 10 And you will have three chances to guess it."
number = rand(10) + 1
puts number
puts "Okay, I have my number."

MAX_GUESSES = 3
1.upto(MAX_GUESSES) do |guesses_num|
  print "Guess #{guesses_num}: "
  guess = gets.chomp.to_i
  if guess == number
    puts "You guessed it, well done!"
    puts "My number was #{number}."
    break
  else
    if guesses_num == MAX_GUESSES
      puts "That was your last guess."
      puts "My number was #{number}"
    elsif guess > number
      puts "Guess again"
      puts "Hint, My number is smaller than #{guess}"
    else
      puts "Guess again"
      puts "Hint, My number is bigger than #{guess}"
    end
  end
end
