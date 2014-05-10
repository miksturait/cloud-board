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
