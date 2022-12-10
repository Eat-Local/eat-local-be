# frozen_string_literal: true

module Mutations
  class DestroyFavorite < Mutations::BaseMutation
    argument :id, Integer, required: true
    argument :user_id, Integer, required: true

    field :user, Types::UserType
    field :favorite, Types::FavoriteType
    field :errors, [String], null: false

    def resolve(id:, user_id:)
      user = User.find(user_id)
      Favorite.find(id).destroy
      {
        user: user,
        errors: []
      }
    end
  end
end
