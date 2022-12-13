# frozen_string_literal: true

class RemoveColumnFromFavorite < ActiveRecord::Migration[5.2]
  def change
    remove_column :favorites, :is_closed, :string
  end
end
