# frozen_string_literal: true

module Types
  class RestaurantType < Types::BaseObject
    field :id, ID, null: false
    field :address, String, null: false
    field :start_at,Float, null: false
    field :end_at, Float, null: false
  end
end
