class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :address

      t.decimal :start_at
      t.decimal :end_at

      t.timestamps
    end
  end
end
