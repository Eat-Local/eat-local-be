# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    id { Faker::Number.within(range: 1..10) }
    email { Faker::Internet.safe_email }
    password { 'password' }
  end
end
