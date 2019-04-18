# frozen_string_literal: true

module Types
  class Dish < BaseObject
    field :id, ID, null: false
    field :restaurants, [Types::Restaurant], null: false
    field :name, String, null: false
  end
end
