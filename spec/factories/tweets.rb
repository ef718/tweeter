# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tweet do
    body "MyText"
    author "MyString"
    user nil
  end
end
