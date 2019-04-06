class Restaurant < ApplicationRecord
  #associations
  has_many :restaurant_food_types
  has_many :food_types, through: :restaurant_food_types

  has_many :restaurant_dishes
  has_many :dishes, through: :restaurant_dishes

  #validations
  validates :address, presense: true
  validates :start_at, :end_at, numericality: { greater_than_or_equal_to: 0, less_than: 24 }
end
