# frozen_string_literal: true

module Types
  class FavoriteType < Types::BaseObject
    field :id, ID, null: false
    field :title, String
    field :type, String
    field :description, String
    field :address, String
    field :rating, Float
    field :url, String
    field :image, String
    field :hours, String
    field :phone, String
    field :user_id, Integer
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
