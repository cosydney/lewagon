puts "flip or coin?"
choice = gets.chomp
p coin = ["flip", "coin"].sample

result = (choice == coin) ? "winner" : "looser"
puts "#{result}, that was #{coin}"