# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
  user = User.create(
    email: Faker::Internet.email,
    password: Faker::Internet.password,
  )

  Favorite.create(
    user: user,
    title: Faker::Restaurant.name,
    type: Faker::Restaurant.type,
    description: Faker::Restaurant.description,
    address: Faker::Address.full_address,
    rating: Faker::Number.between(from: 3.1, to: 5.0),
    url: Faker::Internet.url,
    image: Faker::Internet.url,
    hours: 'Mon-Fri 9-5',
    phone: Faker::PhoneNumber.cell_phone
  )
end
