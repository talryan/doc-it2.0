class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :user

  validates :time, presence: true
  validates :date, presence: true



  scope :upcoming, -> {where('date > ?', Date.today )}

end
