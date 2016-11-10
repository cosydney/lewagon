# puts "type in a password"
# password = gets.chomp

# if password =~ /^(?=.*\d)(?=.*[A-Z])(?=.*[\W_]).{6,}$/
#   puts "A strong one your password is, mmh!"
# else
#   puts "The force with your password is not!"
# end


# text = "
# this is a multi-line text
# try to match only this line
# and not the others
# "

# p text =~ /^try .* line$/       # => 25 ?!
# p text =~ /\Atry .* line\z/     # => nil
### => nil because the begin of the string is on this

### MATCH
#
#
# name = "Carlos Mendez"
# pattern = /^(\w+) (\w+)$/
# result = name.match(pattern)
# p result

# p "Your first name is #{result[1]} and last name is #{result[2]}"

##### Naming group inside REGEX ########

# name = "Carlos Mendez"
# pattern = /^(?<first>\w+) (?<second>\w+)$/
# result = name.match(pattern)
# p result

# p "Your first name is #{result["first"]} and last name is #{result["second"]}"


#### email examples

# email ="chnsydney@gmail.com"
# pattern = /[\w.]+@(?<domain>\w+\.\w+)/

# result = email.match(pattern)

# p " your email domain is #{result["domain"]}"

########### GSUB

# p "hello guys".gsub(/g..s/, 'le wagon')
# # p "hello guys".gsub(/^(\w+) (\w+)$/, 'Oh \2, \1!')

# p "Let's play tic tac toe".scan(/t../)

# p "Let's play tic tac toe".scan(/\bt../)


