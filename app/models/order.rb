# frozen_string_literal: true

class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items, dependent: :destroy

  validates :total_amount, presence: true, numericality: { greater_than_or_equal_to: 0 }

  rhino_owner :user
  rhino_references [ :user ]
end
