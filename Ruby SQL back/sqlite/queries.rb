# Give me the DB handler -> gem
require 'sqlite3'

# Create / Connect with DataBase -> Global variable

DB = SQLite3::Database::new('db.sqlite')

# get all the cities
cities = DB.execute("SELECT * FROM cities")


# transform the results into a hash
# DB.results_as_hash = true

# get all the cities


cities.each do |city|
  p "#{city[1]} has #{city[2]} surface"
end

