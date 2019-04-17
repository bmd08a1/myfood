module Types
  class DishAttributes < BaseInputObject
    description "Attributes to create a dish"
    argument :restaurant_id, Int, "1", required: true
    argument :dish_name, String, "Carbonara", required: true
  end
end
