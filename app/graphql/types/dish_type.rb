module Types
  class DishType < BaseObject
    field :id, ID, null: false
    field :restaurants, [Types::RestaurantType], null: false
    field :name, String, null: false


  end
end
