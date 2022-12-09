module Mutations
  class DestroyFavorite < Mutations::BaseMutation
    argument :id, Integer, required: true


    field :favorite, Types::FavoriteType, null: false


    def resolve(id:)
      Favorite.find(:id).destroy
    end
  end
end
