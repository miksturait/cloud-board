class CollectionImage < ActiveRecord::Base
  # --- Associations ---
  belongs_to :image
  belongs_to :collection
end
