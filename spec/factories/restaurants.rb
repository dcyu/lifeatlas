# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryBot.define do
  factory :restaurant do
    destination_id { 1 }
    name { "MyString" }
  end
end
