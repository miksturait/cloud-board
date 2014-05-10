class Board < ActiveRecord::Base
  # belongs_to :preview
  belongs_to :user
  
  has_many :images
end
