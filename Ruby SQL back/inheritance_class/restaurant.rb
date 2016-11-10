# Naming
# Restaurant => restaurant.
# RubyRails => ruby_rail.rb

class Restaurant
  attr_reader :name
  attr_accessor :location
  #attr_writer :location

  def initialize(name, location, type )
    @name, @location, @type = name, location, type
    @guests = []
  end

  def add_reservation(name)
    @guests = @guests.concat([name])
    true
  end

  def guestlist
    @guests.join("\n")
  end

  # def location
  #   @location
  # end

  # def location=(value)
  #   @location = value
  # end
end


le_wagon = Restaurant.new("lewagon", "Lisboa", "Beer")
# le_wagon.location = 'Paris'
# p le_wagon.location

le_wagon.add_reservation("Thomas")
le_wagon.add_reservation("Coco")
le_wagon.add_reservation("João")
puts le_wagon.guestlist

