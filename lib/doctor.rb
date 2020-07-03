class Doctor

  attr_accessor :name
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

  def appointments
    Appointment.all.select do |x|
      x.doctor == self
    end
  end

  def new_appointment(date, patient)
    Appointment.new(date, self, patient)
  end

end
