# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :product do
    name "MyString"
    permalink "MyString"
    description "MyText"
    price 1
    user nil
  end
end
