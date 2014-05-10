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

class CollectionImage < ActiveRecord::Base
  # --- Associations ---
  belongs_to :image
  belongs_to :collection
end
