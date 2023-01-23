# frozen_string_literal: true

module FactoryMethod
  class Delivery
    def delivery_name
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
    end
  end
end
