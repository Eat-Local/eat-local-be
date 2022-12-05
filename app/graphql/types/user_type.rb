# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :email, String
    field :password, String
    field :favorites, [Types::FavoriteType], null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :count_favorites, Integer, null: true

    def count_favorites
      object.favorites.count
    end
  end
end
