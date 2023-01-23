# frozen_string_literal: true

class User < ApplicationRecord

  has_many :orders
  has_many :deliveries, through: :order
  validates :first_name, presence: true, length: { maximum: 55 }
  validates :last_name, presence: true, length: { maximum: 55 }
  validates :phone_number, presence: false
  validates :email, presence: false
  validates :password, presence: true

end
