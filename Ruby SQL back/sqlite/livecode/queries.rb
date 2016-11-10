# Give me the DB handler -> gem
require 'sqlite3'

# Create / Connect with DB
DB = SQLite3::Database::new('db.sqlite')

transform the results into a hash
DB.results_as_hash = true

get all the cities
cities = DB.execute("SELECT * FROM cities")

p cities

# get  city with id 1
city_with_id_1 = DB.execute("SELECT * FROM cities WHERE id = 1")

p city_with_id_1

get all the cities
cities_starting_with_p = DB.execute("SELECT * FROM cities WHERE name LIKE 'P%'")

p cities_starting_with_p

# get the inahbitants of Lisbon

lisbon_inhabitants =  DB.execute <<-SQL
	SELECT inhabitants.name
	FROM inhabitants JOIN cities ON (cities.id = inhabitants.city_id)
	WHERE cities.name = 'Lisbon'
SQL

# p lisbon_inhabitants

# count the name of inhabitants per city
count_city_inhabitants =  DB.execute <<-SQL
	SELECT inhabitants.name, cities.name
	FROM cities JOIN inhabitants ON (cities.id = inhabitants.city_id)

SQL

p count_city_inhabitants

# count the name of inhabitants per city even with cities with no inhabitants
count_city_inhabitants =  DB.execute <<-SQL
	SELECT inhabitants.name, cities.name
	FROM cities LEFT JOIN inhabitants ON (cities.id = inhabitants.city_id)
SQL

p count_city_inhabitants






