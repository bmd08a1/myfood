# frozen_string_literal: true

class MyfoodSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)
end
