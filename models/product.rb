# frozen_string_literal: true

class Product < ApplicationRecord

  belongs_to :order
  validates :name, presence: true, length: { maximum: 55 }
  validates :size, presence: true, length: { maximum: 55 }
  validates :weight, presence: false
  validates :category, presence: false

end
