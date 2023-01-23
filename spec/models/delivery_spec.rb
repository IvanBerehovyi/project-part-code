# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Delivery, type: :model do
  subject { FactoryBot.build(:delivery) }
  let(:user) { FactoryBot.create(:user) }
  let(:product) { FactoryBot.create(:product, user_id: user.id) }

  describe 'validation' do
    it 'fails if delivery_number is missing' do
      subject.delivery_number = nil
      expect(subject.valid?).to be_falsey
    end

    it 'fails if delivery_type is missing' do
      subject.delivery_type = nil
      expect(subject.valid?).to be_falsey
    end

    it 'fails if price is missing' do
      subject.delivery_type = nil
      expect(subject.valid?).to be_falsey
    end

    it 'fails if slug is missing' do
      subject.slug = nil
      expect(subject.valid?).to be_falsey
    end
  end
end
