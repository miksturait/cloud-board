class Image < ActiveRecord::Base
  belongs_to :board
  belongs_to :user
end
