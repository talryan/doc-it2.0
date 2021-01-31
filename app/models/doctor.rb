class Doctor < ApplicationRecord
    has_many :appointments
    has_many :users, through: :appointments

    validates :name, presence: true
    validates :address, presence: true 
    validates :city, presence: true
    validates :state, presence: true
    validates :zipcode, presence: true
 
  
    scope :search_by_state_and_specialty, -> (query, specialty) {where('state LIKE ? AND specialty LIKE ?', "%#{query}%", "%#{specialty}%" )}
    scope :list_of_specialties, -> {select(:specialty).distinct}
    scope :alphabetical_order,  ->  {order(state: :asc)}
    scope :doctor_state, -> {select(:state).distinct}
end

