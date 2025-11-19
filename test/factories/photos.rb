# frozen_string_literal: true

FactoryBot.define do
  factory :photo do
    title { "MyString" }
    description { "MyText" }
    price { 1.5 }
    user { nil }
    license { nil }
  end
end
