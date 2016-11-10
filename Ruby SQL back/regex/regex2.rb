# # Regular expressions

# sentence = "You are great guys!"

# pattern = /guys/

# p sentence =~ pattern



match_data = "John Doe".match(/^(\w+) (\w+)$/)
puts "Firstname: #{match_data[1]}"
puts "Lastname: #{match_data[2]}"
#>> Firstname: John
#>> Lastname: Doe