class Cook
  def initialize(name, experience, restaurant)
  @name, @expeience, @restaurant = name, expeience, restaurant
  end
end


class Restaurant
  attr_reader :name
  attr_accessor :location
  def initialize(name, location, type )
    @name = name
    @location = location
    @type = type
    @guests = []
  end

  def add_reservation(name)
    @guests = @guests.concat([name])
    true
  end

  def guestlist
    @guests.join("\n")
  end
end

class FastFood < Restaurant
  attr_reader :name
  def initialize(name, location = '', type = '' , preparation_time = '' )
    super(name, location, type)
    @preparation_time = preparation_time
  end
end

class Gastronomic < Restaurant
  def
end
mc_donalds = FastFood.new("MacDonalds", "Lisboa", "Junk", 2)

puts mc_donalds.add_reservation("Thomas")

