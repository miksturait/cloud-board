class Board < ActiveRecord::Base
  # --- Associations ---
  # belongs_to :preview
  belongs_to :user
  has_many :images
end
