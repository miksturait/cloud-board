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

class Board < ActiveRecord::Base
  # --- Url ---
  def to_param
    "#{id} #{title}".parameterize
  end
  
  # --- Associations ---
  belongs_to :preview, class_name: Image
  belongs_to :user
  has_many :images
end
