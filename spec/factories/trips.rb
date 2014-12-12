# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :trip do
    started_on "2014-12-12"
    left_on "2014-12-12"
    destination_id 1
  end
end
