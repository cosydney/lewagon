# Write a program that create a text file with info scraped on the website of your choice

# access the website of your choice
# Use nokogiri to parse the html method
# Search for a specific class to target for sraping

require 'nokogiri'
require 'open-uri'



html_file = open("http://www.imdb.com/chart/toptv/").read
html_doc = Nokogiri::HTML(html_file)

results = html_doc.search("td.titleColumn a")
results = results.map { |element| element.text }

File.open('movies.txt', 'w' ) do |file|
  file.write(results.join("\n"))
end
