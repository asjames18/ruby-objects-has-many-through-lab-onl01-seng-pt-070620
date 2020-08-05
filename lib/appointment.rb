class Appointment

  @@all = []

  attr_accessor :doctor, :patient, :collect


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
    @patient


  end

  # def new_appointment(date, doctor)
  #   Patient.new(date, doctor, self)
  #
  # end

end
