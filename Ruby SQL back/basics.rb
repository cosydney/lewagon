# this will add a title to the club (name) and the result would be number+1
def add_title(name,number)
  number +=1
    puts "#{name} fans: Give me the #{number}"
    puts "#{name} has won the championships"
    puts "#{name} has #{number} championships"
    return number
end

puts "Hey, what is your favorite club ?"
print ">"
club_name = gets.chomp
if club_name.downcase == "sporting"
  puts "booooo".upcase
else
puts "How many tites does your #{club_name} have?"
print ">"
titles = gets.chomp.to_i

puts "#{club_name} has #{titles} championships"

titles = add_title(club_name, titles)
titles = add_title(club_name, titles)
titles = add_title(club_name, titles)
end