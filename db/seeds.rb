# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do
  User.create(username: Faker::Internet.user_name, email: Faker::Internet.safe_email, password: "test")
end

10.times do
  Store.create(name: Faker::Company.name, phone_number: Faker::PhoneNumber.cell_phone, address1: Faker::Address.street_address, city: "New York", state: "NY", postal_code: Faker::Address.zip_code)
end

stores = Store.all
users  = User.all

20.times do
  Submission.create!(brand: Faker::Commerce.product_name, description: Faker::Food.ingredient, price: Faker::Commerce.price, date_purchased: Faker::Date.backward(14), store: stores.sample, user: users.sample)
end
