# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
15.times do
  Vendor.create(first_name: Faker::Internet.user_name, last_name: Faker::Internet.user_name, email: Faker::Internet.email, password: "password", admin: false, center_code: rand(1..10))
end

45.times do
  Lead.create(first_name: Faker::Internet.user_name, last_name: Faker::Internet.user_name, phone_number: Faker::PhoneNumber.cell_phone, disposition: "New Lead", status: "Inactive", center_code: rand(1..10))
end

1.times do 
  User.create(first_name: "Chris", last_name: "Frazzini", email: "cfrazz@gmail.com", password: "password", admin: true)
end