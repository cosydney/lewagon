class Room
  attr_accessor :id

  def initialize(attributes)
    @capacity = attributes[:capacity] || 0
    @patients = attributes[:patients] || []
  end

  def full?
    @patients.size == @capacity
  end

  def add_patient(patient)
    fail Exception, "Room is full!" if full?
    patient.room = self
    @patients << patient
  end

end

patient = Patient.new(name: "Bob")
patient.room
# => NoMethodError