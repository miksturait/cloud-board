# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :board do
    title "MyString"
    description "MyText"
    preview nil
    user nil
  end
end
