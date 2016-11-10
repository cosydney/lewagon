class Car
  attr_accessor :color, :brand
  attr_writer :color #attr_writer has priority over methods.

  def initialize(color = "banana", brand)
    @brand = brand
    @color = color
    @engine_started = false
  end

  def paint(color)
    puts "Painting the car.. chop .. chop "
    puts "..."
    puts "......."
    puts ".........."
    puts "............"
    @color = color
  end

  def engine_started?
    return @engine_started
  end

  def start_engine
    start_petrol_pump
    init_spark_plug
    puts "Starting engine... VRUUUMMM VROUUMM"
    @engine_started = true
  end

  private #only this class can access the following methods

  def start_petrol_pump
    puts "Starting petrol pump"
  end
  def init_spark_plug
    puts "Intializing spark plug"
  end

end

my_car = Car.new('blue', "ferrari")
my_car.start_engine

# puts "My car appears to be #{my_car.color} #{my_car.brand}"
# my_car.paint("peach")
# puts "My car appears to be #{my_car.color} #{my_car.brand}"

# my_car.start_engine
# puts "is the car engine started? #{my_car.engine_started?}"


# your_car = Car.new('red', 'renault')
# puts "is your car engine started? #{your_car.engine_started?}"
# puts "My car appears to be #{your_car.color}"




