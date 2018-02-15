# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

7.times do 
	Client.create({
		first_name: Faker::Cat.name,
		last_name: Faker::Cat.name,
		address: Faker::Address.street_address,
		email: Faker::Internet.email,
		phone_number: Faker::PhoneNumber.cell_phone
		})
	
end

