# frozen_string_literal: true

module FactoryMethod
  class Shipment
    def initialize(attributes)
      @delivery = attributes[:delivery_params]
    end

    def call
      "FactoryMethod::ChoiceOfDelivery::#{@delivery}Choice".constantize.new.delivery_operation
    end

    def delivery_attributes
      Dir["#{File.dirname('app/factory_method')}/**/*.rb"].each { |file| load file }
      ObjectSpace.each_object(Class).select { |c|
        c.to_s.start_with? 'FactoryMethod::ChoiceOfDelivery::'
      }.map do |str|
        str.to_s.split('::').last.remove("Choice")
      end
    end
  end
end
