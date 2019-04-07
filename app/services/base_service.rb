# frozen_string_literal: true

class BaseService
  include ActiveModel::Model

  def self.call(options)
    service = new(options)
    service.validate!
    service.call
  end
end
