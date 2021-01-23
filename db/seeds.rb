# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



450. times do
Doctor.create(name: Faker::Name.name, 
              address: Faker::Address.unique.street_address, 
              city: Faker::Address.unique.city, 
              state: Faker::Address.state, 
              zipcode: Faker::Address.zip_code, 
            )
end

specialty = [
"General Practice", 
"Pediatrics",
 "Radiology", 
 "Ophthalmology", 
 "Kinesiology", 
 "Oncology",
 "Dermatology", 
 "Gastroenterology", 
 "Epidemiology",
 "Allergy and immunology", 
 "Anesthesiology", 
 "Diagnostic radiology",
 "Neurology",
 "Nuclear Medicine",
 "Family Medicine",
 "Obstetrics and Gynecology",
 "Pathology",
 "Preventive Medicine",
 "Psychiatry",
 "Urology"
]
Doctor.all.each do |doctor|
  doctor.update(specialty: specialty.sample)
end

