class BaseService
  include ActiveModel::Model

  def self.call(options)
    service = self.new(options)
    service.validate!
    service.call
  end
end
