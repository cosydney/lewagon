class Pokemon

  def initialize(options = {})
    @id = options[:id]
    @name = options[:name]
    @power = options[:power]
  end

  def save
    DB.execute("INSERT INTO pokemons (name, power, type)
      VALUES (?, ?, ?)", @name, @power, @type)
  end
  def self.all
    rows = DB.execute("SELECT * FROM pokemons ").first
    rows.map do |row|
      Pokemon.new (name: row[1], power: row[2], type: row[3])
    end
  end
end