# frozen_string_literal: true

class CreateFoodTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :food_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
