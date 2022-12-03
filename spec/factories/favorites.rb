FactoryBot.define do
  factory :favorite do
    user

    title { Faker::Restaurant.name }
    type { Faker::Restaurant.type }
    description { Faker::Restaurant.description }
    address { Faker::Address.full_address }
    rating { Faker::Number.between(from: 3.1, to: 5.0) }
    url { Faker::Internet.url }
    image { Faker::Internet.url }
    hours { "MyString" }
    phone { Faker::PhoneNumber.cell_phone }
  end
end
