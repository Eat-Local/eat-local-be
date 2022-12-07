require 'rails_helper'

RSpec.describe Mutations::CreateFavorite, type: :graphql do
  it 'creates a favorites by user' do
    create(:user, id: 1)
    query = <<~GQL
      mutation {
          createFavorite(input: {
            title: "place",
            venueType: "brewery",
            address: "123 Fake street, Denver, CO, 80205"
            rating: "2.2",
            url: "www.fake.com",
            image: "www.fakepic.com",
            isClosed: "true",
            phone: "(303) 123-4567",
            userId: "1"
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

    result = EatLocalBeSchema.execute(query)

    expect(result['data']['createFavorite']['favorite']).to have_key('id')
    expect(result['data']['createFavorite']['favorite']['title']).to eq('place')
    expect(result['data']['createFavorite']['favorite']['venueType']).to eq('brewery')
    expect(result['data']['createFavorite']['favorite']['address']).to eq("123 Fake street, Denver, CO, 80205")
    expect(result['data']['createFavorite']['favorite']['rating']).to eq(2.2)
    expect(result['data']['createFavorite']['favorite']['url']).to eq('www.fake.com')
    expect(result['data']['createFavorite']['favorite']['image']).to eq('www.fakepic.com')
    expect(result['data']['createFavorite']['favorite']['isClosed']).to eq('true')
    expect(result['data']['createFavorite']['favorite']['phone']).to eq('(303) 123-4567')
    expect(result['data']['createFavorite']['favorite']['userId']).to eq(1)
    expect(result['data']['createFavorite']['errors']).to eq([])
  end
end
