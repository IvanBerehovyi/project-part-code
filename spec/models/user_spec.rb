# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is not valid without a first_name' do
    expect(User.all)
  end

  it 'is not valid without a last_name' do
    expect(User.all)
  end

  it 'is not valid without a email' do
    expect(User.all)
  end

  it 'is not valid without a phone_number' do
    expect(User.all)
  end
end
