require 'date'

def xmasdate
  if Date.today > Date.new(Date.today.year, 12 , 25)
    return Date.new(Date.today.year + 1 , 12 , 25)
  else
    return Date.new(Date.today.year, 12 , 25)
  end
end

def till_christmas
  # define date of today
  now = Date.today
  #case: before chrisetxmas
  next_cristmas = xmasdate

  (next_cristmas - now).to_i
end

puts till_christmas

