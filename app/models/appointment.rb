class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :user



  scope :upcoming, -> {where('date > ?', Date.today )}

end
