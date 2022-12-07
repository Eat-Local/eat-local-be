# frozen_string_literal: true

class User < ApplicationRecord
  validates :email, uniqueness: true
  validates :email, :fname, :lname, presence: true

  has_many :favorites, dependent: :destroy
end
