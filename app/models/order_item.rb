# frozen_string_literal: true

class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :photo

  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }

  rhino_owner :order
  rhino_references [ :order, :photo ]
end
