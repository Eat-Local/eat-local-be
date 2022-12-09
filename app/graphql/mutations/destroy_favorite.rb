module Mutations
  class DestroyFavorite < Mutations::BaseMutation
    argument :id, Integer, required: true


    field :favorite, Types::FavoriteType
    field :errors, [String], null: false


    def resolve(id:)
      Favorite.find(id).destroy
      {
        errors: []
      }
    end
  end
end
