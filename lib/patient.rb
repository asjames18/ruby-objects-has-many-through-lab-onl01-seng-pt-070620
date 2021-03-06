class Patient

  @@all = []

  attr_accessor :name, :appointments, :new_appointment

  def initialize (name)
    @name = name

    @@all << self

  end
  def self.all
    @@all
  end
  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end

  def doctors
    appointments.collect {|appointment|
      appointment.doctor}
  end

  def appointments
    Appointment.all.select {|appointment|
      appointment.patient == self}
  end

end
