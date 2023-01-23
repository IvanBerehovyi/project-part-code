# frozen_string_literal: true

module FactoryMethod
  module ChoiceOfDelivery
    class PickupChoice < DeliveryLogic
      def select_delivery
        FactoryMethod::TypeOfDelivery::Pickup.new
      end
    end
  end
end
