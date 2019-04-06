class RestaurantFoodType < ApplicationRecord
  belongs_to :food_type
  belongs_to :restaurant
end
