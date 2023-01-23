# frozen_string_literal: true

class DeliveryStatus < ApplicationRecord

  belongs_to :user
  belongs_to :delivery
  has_many :orders
  validates :status, presence: true, length: { maximum: 55 }

end
