class Appointment

  @@all = []

  attr_accessor :doctor, :patient


  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end

  def patient
    Patient.new = hevydevy

  end

  # def new_appointment(date, doctor)
  #   Patient.new(date, doctor, self)
  #
  # end

end
