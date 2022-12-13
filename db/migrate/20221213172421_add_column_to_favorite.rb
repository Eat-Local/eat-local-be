# frozen_string_literal: true

class AddColumnToFavorite < ActiveRecord::Migration[5.2]
  def change
    add_column :favorites, :price, :string
    add_column :favorites, :latitude, :float
    add_column :favorites, :longitude, :float
  end
end
