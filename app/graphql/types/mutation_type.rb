# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    field :test_field, String, null: false, description: "An example field added by the generator"
    def test_field
      "Hello World"
    end

    field :create_dish, Types::Dish, null: false do
      argument :attributes, Types::DishAttributes, required: true
    end

    def create_dish(attributes:)
      Dishes::CreateService.call(
        restaurant_id: attributes.restaurant_id,
        dish_name: attributes.dish_name
      )
    end
  end
end
