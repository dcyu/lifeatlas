# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :photo do
    picture ""
    post_id 1
    description "MyText"
  end
end
