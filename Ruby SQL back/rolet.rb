solution = rand(100)

def roulette(guess, solution)
  if guess == solution
    "wow, you guessed it"
  elsif guess < solution
    "No,no no! Try again. your number was lower than the one searched"
  else
    "No ! your number was higher"
  end
end

solution = rand(100)
puts solution
guess = -1

while solution != guess
  puts "guess the number"
  guess = gets.chomp.to_i
  puts roulette(guess, solution)
end