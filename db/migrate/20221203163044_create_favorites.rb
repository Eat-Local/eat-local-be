# frozen_string_literal: true

class CreateFavorites < ActiveRecord::Migration[5.2]
  # rubocop:disable Metrics/MethodLength
  def change
    create_table :favorites do |t|
      t.string :title
      t.string :venue_type
      t.string :description
      t.string :address
      t.float :rating
      t.string :url
      t.string :image
      t.string :hours
      t.string :phone
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
  # rubocop:enable Metrics/MethodLength
end
