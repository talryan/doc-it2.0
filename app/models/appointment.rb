class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :user

  accepts_nested_attributes_for :doctor

  scope :upcoming, -> {where('date > ?', Date.today )}

end
