# require 'json'

# File.open('beers.json').read
# serialized_beers = '{ "beers": [
#   { "name": "Edelweiss", "appearance": "White", "origin": "Austria" },
#   { "name": "Cuvée des Trolls", "appearance": "Blond" }
# ]}'

# beers = JSON.parse(serialized_beers)

# p serialized_beers.class
# p beers.class


require 'json'

beers = { beers: [
  {
    name:       'Edelweiss',
    appearance: 'White',
    origin:     'Austria'
  },
  {
    name:       'Cuvée des Trolls',
    appearance: 'red',
    origin:     'Woopwoop'
  }
]}

filepath= 'beers.json'

File.open(filepath, 'w') do |file|
  file.write(JSON.generate(beers))
end






