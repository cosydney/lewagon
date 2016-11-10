require 'json'
require 'open-uri'

api_url = 'http://api.icndb.com/jokes/random?escape=javascript'
response = open(api_url).read

quote = JSON.parse(response) #stream.read)
puts quote['value']['joke']

# open(api_url) do |stream|
  # quote = JSON.parse(stream.read)
  # puts quote['value']['joke']
# end

# => "Chuck Norris knows everything there is to know -
#     Except for the definition of mercy."