# frozen_string_literal: true

module Mutations
  class CreateUser < Mutations::BaseMutation
    argument :email, String, required: true
    argument :fname, String, required: true
    argument :lname, String, required: true

    field :user, Types::UserType, null: false
    field :errors, [String], null: false

    def resolve(email:, fname:, lname:)
      user = User.new(email: email, fname: fname, lname: lname)
      if user.save
        {
          user: user,
          errors: []
        }
      else
        {
          user: nil,
          errors: user.errors.full_messages
        }
      end
    end
  end
end
