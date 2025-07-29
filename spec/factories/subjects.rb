# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryBot.define do
  factory :subject do
    sequence(:title) { |n| "Subject #{n}" }
  end
end