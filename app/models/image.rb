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

class Image < ActiveRecord::Base
  # --- Associations ---
  belongs_to :board
  belongs_to :user
  belongs_to :collection_image
  has_many :collections, through: :collection_image
  
  # --- Uploader ---
  mount_uploader :image, ImageUploader
end
