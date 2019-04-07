# frozen_string_literal: true

class Dish < ApplicationRecord
  has_many :restaurant_dishes
  has_many :restaurants, through: :restaurant_dishes

  scope :by_name, ->(name) { where(name: name) }
end
