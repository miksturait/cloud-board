# == Schema Information
#
# Table name: collection_images
#
#  id            :integer          not null, primary key
#  image_id      :integer
#  collection_id :integer
#  created_at    :datetime
#  updated_at    :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :collection_image do
    image nil
    collection nil
  end
end
