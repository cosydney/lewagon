# require 'csv'

# filepath = 'beer.csv'

# CSV.foreach(filepath) do |row|
#   row.each do |element|
#     p element
#   end
#   # Here, row is an array of columns
# end


  # require 'csv'

  # csv_options = {
  #   col_sep: ',',
  #   quote_char: '"',
  #   headers: :first_row
  # }

  # filepath    = 'beers.csv'  # Relative to current file

  # CSV.foreach(filepath, csv_options) do |row|
  #   puts "#{row['Name']}, a #{row['Appearance']} beer from #{row['Origin']}"
  # end

require 'csv'

csv_options = { col_sep: ',',
                force_quotes: true,
                quote_char: '"' }
filepath    = 'beers.csv'

CSV.open(filepath, 'wb', csv_options) do |csv|
  csv << ['Name', 'Appearance', 'Origin']
  csv << ['Edelweiss', 'White', 'Austria']
  csv << ['Cuvée des Trolls', 'Blond', 'Belgium']
  csv << ["Choulette Ambrée","Amber","France"]
  csv << ["Gulden Draak","Dark","BELIGUM"]
end





