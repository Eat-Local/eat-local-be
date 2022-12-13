# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Mutations::DestroyFavorite, type: :graphql do
  it 'deletes a favorites by user' do
    user = create(:user, id: 1)
    create(:favorite, id: 1, user_id: 1)
    create_list(:favorite, 5, user_id: 1)
    query = <<~GQL
      mutation {
          destroyFavorite(input: {
            id: 1
            userId: 1
          }) {
            user {
              id
              email
              fname
              lname
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
           errors
          }
          }
    GQL

    expect(user.favorites.count).to eq(6)
    expect(user.favorites.first.id).to eq(1)
    result = EatLocalBeSchema.execute(query)

    expect(user.favorites.count).to eq(5)
    expect(result['data']['destroyFavorite']['user']['favorites'][0]['id']).to_not eq('1')
    expect(result['data']['destroyFavorite']['user']['favorites'][1]['id']).to_not eq('1')
    expect(result['data']['destroyFavorite']['user']['favorites'][2]['id']).to_not eq('1')
    expect(result['data']['destroyFavorite']['user']['favorites'][3]['id']).to_not eq('1')
    expect(result['data']['destroyFavorite']['user']['favorites'][4]['id']).to_not eq('1')
    expect(result['data']['destroyFavorite']['user']['favorites'].count).to eq(5)
    expect(result['data']['destroyFavorite']['errors']).to eq([])
  end
end
