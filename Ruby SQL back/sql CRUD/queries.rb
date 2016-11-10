require 'SQLite3'

DB = SQLite3::Database::new ('doctors.db')

# DB.results_as_hash = true

# DB.execute ("INSERT INTO doctors (name, age, specialty)
# VALUES ('Dr. Dolladille', 45, 'Dentist')")

DB.execute ("UPDATE doctors SET age = 40, name = 'John Smith'
WHERE id = 3")

DB.execute ("UPDATE doctors SET age = 22, name = 'Coco'
WHERE id = 4")


def list_doctors
  DB.execute("SELECT * FROM doctors")
end


p list_doctors