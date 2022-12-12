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
    fname: Faker::Name.first_name,
    lname: Faker::Name.last_name
  )
  rand(6).times do
    user.favorites.create(
      title: Faker::Restaurant.name,
      venue_type: Faker::Restaurant.type,
      address: Faker::Address.full_address,
      rating: Faker::Number.between(from: 3.1, to: 5.0).round(1),
      url: Faker::Internet.url,
      image: Faker::Internet.url,
      price: Faker::Currency.symbol,
      phone: Faker::PhoneNumber.cell_phone,
      latitude: Faker::Address.latitude,
      longitude: Faker::Address.longitude
    )
  end
end
# user = User.create!(email: 'faker@fakemail.com', fname: 'Dude', lname: 'Bro')
# user.favorites.create!(
#   title: 'Faker::Restaurant.name',
#   venue_type: 'Faker::Restaurant.type',
#   description: '::Restaurant',
#   address: 'Faker::Address.full_address',
#   rating: 4.2,
#   url: 'Faker::Internet.url',
#   image: 'Faker::Internet.url',
#   hours: 'Mon-Fri 9-5',
#   phone: 'Faker::PhoneNumber.cell_phone'
# )

# user.favorites.create!(
#   title: 'Restaurant',
#   venue_type: 'New',
#   description: 'Another Restaurant',
#   address: 'Some Place',
#   rating: 4.2,
#   url: 'https://www.url.com',
#   image: 'img.place.com',
#   hours: 'Mon-Fri 9-5',
#   phone: '000-000-0000'
# )
