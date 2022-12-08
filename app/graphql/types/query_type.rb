# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.


    field :user, Types::UserType, null: false do
      argument :email, ID, required: true
    end

    def user(email:)
      User.find_by(email: email)
    end
  end
end
