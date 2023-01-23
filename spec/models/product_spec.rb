# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Product, type: :model do
  subject { FactoryBot.build(:product) }

  describe 'validation' do

    it 'fails if name is missing' do
      subject.name = nil
      expect(subject.valid?).to be_falsey
    end

    it 'fails if size is missing' do
      subject.size = nil
      expect(subject.valid?).to be_falsey
    end

    it 'fails if weight is missing' do
      subject.weight = nil
      expect(subject.valid?).to be_falsey
    end

    it 'fails if category is missing' do
      subject.category = nil
      expect(subject.valid?).to be_falsey
    end
  end
end
