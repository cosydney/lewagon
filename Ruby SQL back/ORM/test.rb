require_relative 'pokemon'
require 'SQLite3'

DB = SQLITE3::Database::new('db.sqlite')

pokemon = Pokemon.new(name: 'Pikachu', power: 823, type: 'Electric')

p pokemon

pokemon.save

p POST.all