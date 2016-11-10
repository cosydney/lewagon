students = %w(joe moses donald arthur )
ages     = %w(45 23 24 27)

# puts "#{students[1].capitalize} is #{ages[1]} years old"

# students.each do |student|
#   i = students.index(student)
#   puts "#{student.capitalize} is #{ages[i]}"
# end

# students.each_with_index do |student, index|
#   puts "#{student} is #{ages[index]} years old"
# end


students_age = {
                "joe" => 45,
                "moses" => 23,
                "donald" => 24,
                "arthur" => 27
              }

# the size
#puts students_age.size

# read from a key
# puts students_age["donald"]

# change a value
# students_age["donald"] += 1

# puts students_age["donald"]
# p students_age.has_key?('moses')
# p students_age.has_key?('boris')

# students_age.each_value do |age|
#   puts age
# end

#p students_age.values

# add a new pair key/value
students_age["edwige"] = 37
#p students_age

students_age.each do |name, age|
  puts "#{name.capitalize} is #{age} years old"
end




















