# frozen_string_literal: true

FactoryBot.define do
  factory :favorite do
    user

    title { Faker::Restaurant.name }
    venue_type { Faker::Restaurant.type }
    address { Faker::Address.full_address }
    rating { Faker::Number.between(from: 3.1, to: 5.0) }
    url { Faker::Internet.url }
    image { Faker::Internet.url }
    price { Faker::Currency.symbol }
    phone { Faker::PhoneNumber.cell_phone }
    latitude { Faker::Address.latitude }
    longitude { Faker::Address.longitude }
  end
end
