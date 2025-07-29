# Read about factories at https://github.com/thoughtbot/factory_girl

 FactoryBot.define do
  factory :post do
    sequence(:title) { |n| "Post Title #{n}" }
    body { "MyText" }
    sequence(:song) { |n| "Song #{n}" }
    association :destination
    association :venue
    association :subject
  end
end
