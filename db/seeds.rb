# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Doctor.create(first_name: 'Natalie', last_name: 'Hume', specialty: 'orthopedics' , address: '123 Sesame Street', city: 'Birmingham', state: 'Alabama', zipcode: '12345')
Doctor.create(first_name: 'Dasi', last_name: 'Lerme', specialty: 'craniofacial' , address: '3201 Canada Lane', city: 'Santa Fe', state: 'Nevada', Zipcode: '45930')
Doctor.create(first_name: 'Kristina', last_name: 'Celine', specialty: 'pediatrics' , address: '234 Spruce Street', city: 'Seattle', state: 'Washington', zipcode: '95624')
Doctor.create(first_name: 'Carl', last_name: 'River', specialty: 'cardiology' , address: '5674 Benson Ave', city: 'Elk Grove', state: 'California', zipcode: '43213')
Doctor.create(first_name: 'Andrew', last_name: 'Hager', specialty: 'neurology' , address: '7594 Calm Way', city: 'Austin', state: 'Texas', zipcode: '08374')