# frozen_string_literal: true

module DeliveryFactory
  TYPES = {
    # /**
    factory_method: FactoryMethod::Shipment,
    # **/
  }.freeze

  def self.for(type, attributes)
    (TYPES[type.to_sym]).new(attributes)
  end
end
