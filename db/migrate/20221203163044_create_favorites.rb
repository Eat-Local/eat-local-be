# frozen_string_literal: true

class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.string :title
      t.string :venue_type
      t.string :address
      t.float :rating
      t.string :url
      t.string :image
      t.string :price
      t.string :phone
      t.float :latitude
      t.float :longitude 
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
