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
    is_closed { 'MyString' }
    phone { Faker::PhoneNumber.cell_phone }
  end
end
