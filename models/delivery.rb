# frozen_string_literal: true

class Delivery < ApplicationRecord

  belongs_to :user
  has_many :products
  belongs_to :orders
  has_one :delivery_status
  validates :delivery_name, presence: true, length: { maximum: 55 }
  validates :delivery_type, presence: true, length: { maximum: 55 }
  validates :price, presence: false
  validates :slug, presence: true

end
