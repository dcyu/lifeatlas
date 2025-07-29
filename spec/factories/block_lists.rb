# Read about factories at https://github.com/thoughtbot/factory_girl

 FactoryBot.define do
  factory :block_list do
    sequence(:title) { |n| "Block List #{n}" }
    description { "MyText" }
  end
end
