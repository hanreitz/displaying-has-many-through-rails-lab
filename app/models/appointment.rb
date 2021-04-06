class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor

  def appointment_datetime=(dt)
    self.datetime = dt
  end

  def appointment_datetime
    self.datetime
  end
end
