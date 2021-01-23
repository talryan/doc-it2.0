class Doctor < ApplicationRecord
    has_many :appointments
    has_many :users, through: :appointments
    validates :name, presence: true
    validates :address, presence: true 
    validates :city, presence: true
    validates :state, presence: true
    validates :zipcode, presence: true
 
    # accepts_nested_attributes_for :appointments

    scope :search_by_specialty, -> (query) {where('specialty LIKE ?', "%#{query}%" )}
    scope :alphabetical_order,  ->  {order(state: :asc)}

end

