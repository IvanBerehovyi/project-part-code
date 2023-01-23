# frozen_string_literal: true

module FactoryMethod
  module TypeOfDelivery
    class Pickup < Delivery
      def delivery_name
        'Pickup'
      end
    end
  end
end
