# frozen_string_literal: true

module Mutations
  class CreateFavorite < Mutations::BaseMutation
    argument :title, String, required: true
    argument :venue_type, String, required: true
    argument :address, String, required: true
    argument :rating, String, required: true
    argument :url, String, required: true
    argument :image, String, required: true
    argument :price, String, required: true
    argument :phone, String, required: true
    argument :latitude, String, required: true
    argument :longitude, String, required: true
    argument :user_id, String, required: true

    field :user, Types::UserType, null: false
    field :favorite, Types::FavoriteType, null: false
    field :errors, [String], null: false

    def resolve(title:, venue_type:, address:, rating:, url:,
                image:, price:, phone:, latitude:, longitude:, user_id:)
      user = User.find(user_id)
      favorite = user.favorites.new(title: title, venue_type: venue_type, address: address, rating: rating,
                                    url: url, image: image, price: price, phone: phone,
                                    latitude: latitude, longitude: longitude, user_id: user.id)
      favorite.save
      {
        user: user,
        errors: []
      }
    end
  end
end
