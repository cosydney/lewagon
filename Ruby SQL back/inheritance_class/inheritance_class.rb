class Building
  attr_accessor :name, :height, :width, :length
  def initialize(name, height, width, length)
    @name = name
    @height, @width, @length = height, width, length
  end

  def floor_area
    width * length
  end
end


class Castle < Building
end

class House < Building
end


some_castle = Castle.new('Tower of London', 27, 100, 480)
p some_castle.name # => Tower of London
p some_castle.floor_area # => 48000