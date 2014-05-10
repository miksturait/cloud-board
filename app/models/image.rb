class Image < ActiveRecord::Base
  # --- Associations ---
  belongs_to :board
<<<<<<< HEAD
  belongs_to :user
=======
  belongs_to :user, through: :board
  belongs_to :collection_image
  has_many :collections, through: :collection_image
>>>>>>> 22dd35ffa45c86de78f5c3622eb24ed819c5e7b7
end
