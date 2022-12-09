# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_user, mutation: Mutations::CreateUser
    field :create_favorite, mutation: Mutations::CreateFavorite
    field :destroy_favorite, mutation: Mutations::DestroyFavorite
  end
end
