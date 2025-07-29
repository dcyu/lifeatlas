# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryBot.define do
  factory :meeting do
    person_id { 1 }
    day { "2016-02-13" }
    location { "MyString" }
  end
end
