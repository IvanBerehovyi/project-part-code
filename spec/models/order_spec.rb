# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Order, type: :model do
  subject { FactoryBot.build(:order) }
  let(:user) { FactoryBot.create(:user) }
  let(:product) { FactoryBot.create(:product, user_id: user.id) }

  describe 'validation' do
    it 'fails if order number is missing' do
      subject.order_number = nil
      expect(subject.valid?).to be_falsey
    end

    it 'fails if product_category is missing' do
      subject.product_category = nil
      expect(subject.valid?).to be_falsey
    end
  end
end
