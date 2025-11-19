# frozen_string_literal: true

class License < ApplicationRecord
  belongs_to :organization
  has_many :photos, dependent: :destroy

  validates :name, presence: true, length: { maximum: 255 }, uniqueness: { scope: :organization_id }
  validates :description, length: { maximum: 1000 }

  rhino_owner :organization
  rhino_references [ :organization ]
end
