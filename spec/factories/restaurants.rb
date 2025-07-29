# Read about factories at https://github.com/thoughtbot/factory_girl

 FactoryBot.define do
  factory :venue do
    sequence(:name) { |n| "Venue #{n}" }
    lat { "40.7128" }
    lng { "-74.0060" }
  end
  
  # Alias for backwards compatibility
  factory :restaurant, parent: :venue
end
