class Collection < ActiveRecord::Base
  # --- Associations ---
  belongs_to :user
  belongs_to :collection_image
  has_many :images, through: :collection_image


end
