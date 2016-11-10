
hour =  #Time.now.hour

if hour < 12
  puts "Good morning!"
elsif hour > 12
  puts "Good afternoon!"
elsif hour >= 20
  puts "Good night!"
else
  puts "Lunch time!"
end