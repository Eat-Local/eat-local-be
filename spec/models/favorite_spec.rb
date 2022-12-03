require 'rails_helper'

RSpec.describe Favorite, type: :model do
  it { should belong_to :user }

  it 'favorites has attributes' do
    favorite = create(:favorite)

    expect(favorite.title).to be_a String
    expect(favorite.type).to exists
    expect(favorite.description).to exists
    expect(favorite.address).to exists
    expect(favorite.rating).to exists
    expect(favorite.url).to exists
    expect(favorite.image).to exists
    expect(favorite.hours).to exists
    expect(favorite.phone).to exists
  end
end
