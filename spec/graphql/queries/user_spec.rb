require 'rails_helper'

RSpec.describe "Query user", type: :graphql do
  it 'queries a user' do
    user = create(:user, email: "TimmyT@fakeemail.com")
    create_list(:favorite, 10, user_id: user.id)
    query = <<~GQL
      query getUsers {
        user(email: "TimmyT@fakeemail.com"){
            fname
            lname
            email
            id
            favorites {
                id
                title
                venueType
                address
                rating
                url
                image
                isClosed
                phone
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
    expect(result['data']['user']['favorites'].count).to eq(10)
    expect(result['data']['user']['favorites']).to be_an(Array)
    expect(result['data']['user']['favorites'][0]).to have_key('id')
    expect(result['data']['user']['favorites'][0]).to have_key('title')
    expect(result['data']['user']['favorites'][0]).to have_key('venueType')
    expect(result['data']['user']['favorites'][0]).to have_key('address')
    expect(result['data']['user']['favorites'][0]).to have_key('rating')
    expect(result['data']['user']['favorites'][0]).to have_key('url')
    expect(result['data']['user']['favorites'][0]).to have_key('image')
    expect(result['data']['user']['favorites'][0]).to have_key('isClosed')
    expect(result['data']['user']['favorites'][0]).to have_key('phone')
    expect(result['data']['user']['favorites'][0]['userId']).to eq(user.id)

  end
end
