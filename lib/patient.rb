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
    Doctor.all.select {|doctor|
      doctor.patient == self}
  end

  def appointments

    Appointment.collect {|appointments|
      appointments.patient == self}
  end

  def patients
    Patient.map {|patient| patient.appointments}

  end

end
