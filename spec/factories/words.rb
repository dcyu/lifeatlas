# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryBot.define do
  factory :word do
    english { "MyString" }
    spanish { "MyString" }
  end
end
