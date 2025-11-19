# frozen_string_literal: true

FactoryBot.define do
  factory :order do
    total_amount { 1.5 }
    user { nil }
  end
end
