# frozen_string_literal: true

require 'rails_helper'

RSpec.describe DeliveryStatus, type: :model do
  subject { FactoryBot.build(:delivery_status) }
  let(:user) { FactoryBot.create(:user) }
  let(:product) { FactoryBot.create(:product, user_id: user.id) }

  describe 'validation' do
    it 'fails if status is missing' do
      subject.status = nil
      expect(subject.valid?).to be_falsey
    end
  end
end
