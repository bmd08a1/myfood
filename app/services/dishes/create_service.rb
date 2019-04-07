# frozen_string_literal: true

module Dishes
  class CreateService < BaseService
    attr_accessor :restaurant, :dish_name, :dish

    validates_presence_of :restaurant, :dish_name

    def initialize(restaurant_id:, dish_name:)
      @restaurant = Restaurant.find_by(id: restaurant_id)
      @dish_name = dish_name
    end

    def call
      ActiveRecord::Base.transaction do
        create_dish
        create_restaurant_dish
      end
    end

    private

    def create_dish
      @dish = Dish.by_name(dish_name).first_or_create!
    end

    def create_restaurant_dish
      restaurant_dish = @restaurant.restaurant_dishes.build(dish: dish)
      restaurant_dish.save!
    end
  end
end
