class Doctor < ApplicationRecord
    has_many :appointments
    has_many :users, through: :appointments

    scope :search_by_state, -> (query) {where('state LIKE ?', "%#{query}%" )}

end
