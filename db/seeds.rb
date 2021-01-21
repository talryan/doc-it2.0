# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


50. times do
Doctor.create(name: Faker::FunnyName.two_word_name, 
              address: Faker::Address.unique.street_address, 
              city: Faker::Address.unique.city, 
              state: Faker::Address.state, 
              zipcode: Faker::Address.zip_code 
            )
end

def doctor_specialty 
      Doctor.create([{specialty: "Abdominal Radiology"}, {specialty: "Adult Cardiothoracic Anesthesiology"}, {specialty: "Allergy/Immunology"},
        {specialty: "Addiction Psychiatry"}]
                   )
end

doctor_specialty