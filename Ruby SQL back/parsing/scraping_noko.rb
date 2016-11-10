require 'open-uri'
require 'nokogiri'

ingredient = "chocolate"

html_file = open("http://www.epicurious.com/tools/searchresults?search=#{ingredient}")
html_doc = Nokogiri::HTML(html_file)

html_doc.search('.recipeLnk').each do |element|
  puts element.text
  puts element.attribute('href')
end

# answer is relative