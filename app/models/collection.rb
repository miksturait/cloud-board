# == Schema Information
#
# Table name: collections
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :string(255)
#  user_id     :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Collection < ActiveRecord::Base
  # --- Associations ---
  belongs_to :user
  belongs_to :collection_image
  has_many :images, through: :collection_image
end
