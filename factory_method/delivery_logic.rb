# frozen_string_literal: true

module FactoryMethod
  class DeliveryLogic
    def select_delivery
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end

    def delivery_operation
      delivery = select_delivery
      "Your shipping method: #{delivery.delivery_name}"
    end
  end
end
