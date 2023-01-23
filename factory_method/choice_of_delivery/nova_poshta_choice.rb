# frozen_string_literal: true

module FactoryMethod
  module ChoiceOfDelivery
    class NovaPoshtaChoice < DeliveryLogic
      def select_delivery
        FactoryMethod::TypeOfDelivery::NovaPoshta.new
      end
    end
  end
end
