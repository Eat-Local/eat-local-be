# frozen_string_literal: true

module Types
  class FavoriteType < Types::BaseObject
    field :id, ID, null: false
    field :title, String
    field :venue_type, String
    field :address, String
    field :rating, Float
    field :url, String
    field :image, String
    field :price, String
    field :phone, String
    field :latitude, Float
    field :longitude, Float
    field :user_id, Integer
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
