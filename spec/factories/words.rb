# Read about factories at https://github.com/thoughtbot/factory_girl

 FactoryBot.define do
  factory :word do
    sequence(:english) { |n| "English #{n}" }
    sequence(:spanish) { |n| "Spanish #{n}" }
    association :block_list
  end
end
