# == Schema Information
#
# Table name: images
#
#  id         :integer          not null, primary key
#  image      :string(255)
#  created_at :datetime
#  updated_at :datetime
#  board_id   :integer
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :image do
    image "MyString"
  end
end
