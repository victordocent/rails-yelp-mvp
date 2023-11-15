class Restaurant < ApplicationRecord
  validates :name, :adress, :category, presence: true

  has_many :reviews, dependent: :destroy
end
