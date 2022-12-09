require 'rails_helper'

RSpec.describe Mutations::DestroyFavorite, type: :graphql do
  it 'deletes a favorites by user' do
    create(:user, id: 1)
    create(:favorite, id: 1, user_id: 1)
    query = <<~GQL
      mutation {
          destroyFavorite(id: '1')
          {
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
        }
    GQL

    result = EatLocalBeSchema.execute(query)
  end
end
