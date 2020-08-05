class Doctor

  @@all = []

  attr_accessor :name, :patients


  def initialize (name)
    @name = name
    @@all << self

  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select {|appointment|
      appointment.doctor = self}

  end

  # def patients
  #   Patient.all.select {|patient|
  #     patient.appointments == self}
  # end

  def new_appointment(patient, date)
    Appointment.new(patient, date, self )
  end

end
