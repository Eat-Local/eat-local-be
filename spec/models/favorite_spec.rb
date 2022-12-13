# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Favorite, type: :model do
  it { should belong_to :user }

  it 'favorites has attributes' do
    favorite = create(:favorite)

    expect(favorite.title).to be_a String
    expect(favorite.venue_type).to be_a String
    expect(favorite.address).to be_a String
    expect(favorite.rating).to be_a Float
    expect(favorite.url).to be_a String
    expect(favorite.image).to be_a String
    expect(favorite.price).to be_a String
    expect(favorite.phone).to be_a String
    expect(favorite.latitude).to be_a Float
    expect(favorite.longitude).to be_a Float
  end
end
