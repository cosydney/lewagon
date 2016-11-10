class Patient
  attr_reader :name, :cured
  attr_accessor :room, :id

  def initialize(attributes)
    @name = attributes[:name]
    @cured = attributes[:cured] || false
end

  def cure
    @cured = true
  end
end