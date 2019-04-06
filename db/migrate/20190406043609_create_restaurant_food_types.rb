class CreateRestaurantFoodTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurant_food_types do |t|
      t.references :restaurants
      t.references :food_type

      t.timestamps
    end
  end
end
