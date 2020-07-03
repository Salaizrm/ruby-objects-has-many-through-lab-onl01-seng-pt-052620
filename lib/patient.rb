class Patient

  attr_accessor :name, :doctor
  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(appointment, doctor)
    Appointment.new(appointment, self, doctor)
  end

end
