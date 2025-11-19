# frozen_string_literal: true

FactoryBot.define do
  factory :order_item do
    quantity { 1 }
    price { 1.5 }
    order { nil }
    photo { nil }
  end
end
