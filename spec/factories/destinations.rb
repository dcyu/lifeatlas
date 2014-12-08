# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :destination do
    name "MyString"
    arrived_on "2014-12-07"
    left_on "2014-12-07"
    lng "MyString"
    lat "MyString"
  end
end
