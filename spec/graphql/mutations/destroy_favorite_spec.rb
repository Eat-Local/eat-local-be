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
          }) {
           favorite {
             id,
             title,
             venueType,
             address,
             rating,
             url,
             image,
             isClosed,
             phone,
             userId
           }
           errors
        }
      }
    GQL

    expect(user.favorites.count).to eq(6)

    result = EatLocalBeSchema.execute(query)
    expect(user.favorites.count).to eq(5)
    expect(result['data']['destroyFavorite']['favorite']).to eq(nil)
    expect(result['data']['destroyFavorite']['errors']).to eq([])
  end
end
