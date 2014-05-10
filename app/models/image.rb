class Image < ActiveRecord::Base
  # --- Associations ---
  belongs_to :board
  belongs_to :user
  belongs_to :collection_image
  has_many :collections, through: :collection_image
end
