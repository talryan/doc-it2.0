class Hospital < ApplicationRecord
    has_many :doctors
    has_many :users, through: :doctors
end
