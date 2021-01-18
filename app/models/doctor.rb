class Doctor < ApplicationRecord
    has_many :appointments
    belongs_to :hospital
    has_many :users, through: :appointments

end
