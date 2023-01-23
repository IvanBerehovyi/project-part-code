# frozen_string_literal: true

class Order < ApplicationRecord

  belongs_to :user
  has_many :products
  has_one :delivery
  validates :order_number, presence: true, length: { maximum: 55 }
  validates :product_category, presence: true, length: { maximum: 55 }

end
