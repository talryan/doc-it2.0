class User < ApplicationRecord
    has_secure_password
    has_many :appointments
    has_many :doctors, through: :appointments
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true, uniqueness: true, on:create

        


    def self.from_omniauth(response)
        User.find_or_create_by(uid: response[:uid], provider: response[:provider]) do |u|
            u.first_name = response[:info][:first_name]
            u.last_name = response[:info][:last_name]
            u.email = response[:info][:email]
            u.password = SecureRandom.hex(15)
        end
    end
end
