# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryBot.define do
  factory :person do
    first_name { "MyString" }
    last_name { "MyString" }
    facebook_link { "MyString" }
    linkedin_link { "MyString" }
  end
end
