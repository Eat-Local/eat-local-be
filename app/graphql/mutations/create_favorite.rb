# frozen_string_literal: true

module Mutations
  class CreateFavorite < Mutations::BaseMutation
    argument :title, String, required: true
    argument :venue_type, String, required: true
    argument :address, String, required: true
    argument :rating, String, required: true
    argument :url, String, required: true
    argument :image, String, required: true
    argument :is_closed, String, required: true
    argument :phone, String, required: true
    argument :user_id, String, required: true

    field :favorite, Types::FavoriteType, null: false
    field :errors, [String], null: false

    def resolve(title:, venue_type:, address:, rating:, url:,
                image:, is_closed:, phone:, user_id:)
      user = User.find(user_id)
      favorite = user.favorites.new(title: title, venue_type: venue_type, address: address, rating: rating,
                                    url: url, image: image, is_closed: is_closed, phone: phone, user_id: user.id)
      favorite.save
      {
        favorite: favorite,
        errors: []
      }
    end
  end
end
