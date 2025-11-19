# frozen_string_literal: true

class Photo < ApplicationRecord
  belongs_to :user
  belongs_to :license
  has_one_attached :image
  has_many :order_items, dependent: :destroy

  validates :title, presence: true, length: { maximum: 255 }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :description, length: { maximum: 2000 }
  validates :image, presence: true

  rhino_owner :user
  rhino_references [ :user, :license ]
end
