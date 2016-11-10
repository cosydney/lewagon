# get input from the user
# generate a random move for the computer
# compare the two answers and see who won
# return the result

puts "Your input"
print ">"
#choice = gets.chomp

answers = ["rock", "paper", "scissors"]
computer_choice = answers[rand(0..2)]
p computer_choice

