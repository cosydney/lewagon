# # String
# message = "hello"
# # Fixnum
# 12
# -5
# 10
# # float
# 12.0
# 2.5
# # Array
# [ "hello" , 1 , "two", ]
# %w(one two three)
# # Range
# (2..10)
# 'a'..'z'.to_a

 cars = %w(mercedes porshe ferrari citroen renault)
# cars << 'peugeolt'
# p cars[1]
# cars[2] = 'peugeot'
# p cars

cars.each do |car|
  p car
end

capped_cars = cars.map { |car| car.upcase }
p capped_cars






