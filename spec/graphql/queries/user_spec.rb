# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Query user', type: :graphql do
  it 'queries a user by email' do
    user = create(:user, email: 'TimmyT@fakeemail.com')
    create_list(:favorite, 10, user_id: user.id)
    query = <<~GQL
      query getUsers {
        user(email: "TimmyT@fakeemail.com"){
            fname
            lname
            email
            id
            countFavorites
            favorites {
                id
                title
                venueType
                address
                rating
                url
                image
                price
                phone
                latitude
                longitude
                userId
            }
          }
        }
    GQL

    result = EatLocalBeSchema.execute(query)

    expect(result['data']['user']).to have_key('id')
    expect(result['data']['user']['id']).to eq(user.id.to_s)
    expect(result['data']['user']).to have_key('fname')
    expect(result['data']['user']).to have_key('lname')
    expect(result['data']['user']['email']).to eq('TimmyT@fakeemail.com')
    expect(result['data']['user']['countFavorites']).to eq(10)
    expect(result['data']['user']['favorites']).to be_an(Array)
    expect(result['data']['user']['favorites'][0]).to have_key('id')
    expect(result['data']['user']['favorites'][0]).to have_key('title')
    expect(result['data']['user']['favorites'][0]).to have_key('venueType')
    expect(result['data']['user']['favorites'][0]).to have_key('address')
    expect(result['data']['user']['favorites'][0]).to have_key('rating')
    expect(result['data']['user']['favorites'][0]).to have_key('url')
    expect(result['data']['user']['favorites'][0]).to have_key('image')
    expect(result['data']['user']['favorites'][0]).to have_key('price')
    expect(result['data']['user']['favorites'][0]).to have_key('phone')
    expect(result['data']['user']['favorites'][0]['userId']).to eq(user.id)
  end

  it 'throws an error when email does not exist' do
    query = <<~GQL
      query getUsers {
        user(email: "TimT@fakeemail.com"){
            fname
            lname
            email
            id
            countFavorites
            favorites {
                id
                title
                venueType
                address
                rating
                url
                image
                price
                phone
                latitude
                longitude
                userId
            }
          }
        }
    GQL

    result = EatLocalBeSchema.execute(query)

    expect(result['data']).to eq(nil)
    expect(result['errors'][0]['message']).to eq('Cannot return null for non-nullable field Query.user')
  end
end
