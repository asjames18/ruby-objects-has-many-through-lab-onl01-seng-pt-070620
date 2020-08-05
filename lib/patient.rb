class Patient

  @@all = []

  attr_accessor :appointments, :new_appointment

  def initialize (name)
    @name = name

    @@all << self

  end
  def self.all
    @@all
  end
  def new_appointment(date, doctor)
    Appointment.new(date, doctor, self)
  end

  def doctors
    Doctor.all.select do |doctor|
      doctor.patient == self
    end
  end

  def appointments

    Appointment.collect do
       |appointments| appointments.patient == self
       d

  end

end
