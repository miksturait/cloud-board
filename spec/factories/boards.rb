# == Schema Information
#
# Table name: boards
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  preview_id  :integer
#  user_id     :integer
#  created_at  :datetime
#  updated_at  :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :board do
    title "MyString"
    description "MyText"
    preview nil
    user nil
  end
end
