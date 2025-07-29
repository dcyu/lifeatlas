# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryBot.define do
  factory :destination do
    sequence(:name) { |n| "Destination #{n}" }
    lat { "40.7128" }
    lng { "-74.0060" }
    visited { false }
    association :user
  end
end
