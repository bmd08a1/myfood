class CreateRestaurantDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurant_dishes do |t|
      t.references :restaurants
      t.references :dishes

      t.timestamps
    end
  end
end
