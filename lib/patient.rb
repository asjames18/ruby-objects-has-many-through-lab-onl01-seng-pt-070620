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
      appointments.collect {|appointment| appointment.doctor}
  end

  def appointments

    Appointment.all.select {|appointment| appointment.patient == self}
  end

end
