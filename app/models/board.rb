class Board < ActiveRecord::Base
  # --- Associations ---
  belongs_to :preview, class_name: Image
  belongs_to :user
  has_many :images
end
