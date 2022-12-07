require 'rails_helper'

RSpec.describe Mutations::CreateUser, type: :graphql do
  it 'creates a user' do
    query = <<~GQL
    mutation {
        createUser(input: {
         email: "TimmyT@fakeemail.com",
         fname: "Tim",
         lname: "Timmyson"
        }) {
         user {
           id,
           email,
           fname,
           lname
         }
         errors
        }
        }
    GQL

    result = EatLocalBeSchema.execute(query)

    expect(result['data']['createUser']['user']).to have_key('id')
    expect(result['data']['createUser']['user']['email']).to eq("TimmyT@fakeemail.com")
    expect(result['data']['createUser']['user']['fname']).to eq("Tim")
    expect(result['data']['createUser']['user']['lname']).to eq("Timmyson")
    expect(result['data']['createUser']['errors']).to eq([])
  end
end
