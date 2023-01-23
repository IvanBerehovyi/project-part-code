# frozen_string_literal: true

module Delivery
  class DeliveryObject
    def initialize(id)
      @id = id
    end

    def delivery_object
      @delivery = Delivery.find(@id)
      delivery_object = DeliveryFactory.for(@delivery.slug, delivery_params)
      delivery_object.call
    end
  end
end
