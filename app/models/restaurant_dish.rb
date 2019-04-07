# frozen_string_literal: true

class RestaurantDish < ApplicationRecord
  belongs_to :restaurant
  belongs_to :dish
end
