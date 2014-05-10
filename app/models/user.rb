class User < ActiveRecord::Base
  # --- Authentication ---
  authenticates_with_sorcery!
  
  # --- Associations ---
  has_many :boards
  has_many :images, through: :boards
  has_many :collections
  
  # --- Validations ---
  validates :email, :password, :username, presence: true
  
  validates :email, 
              format: /@/,
              uniqueness: true
  
  validates :password, 
              confirmation: true, 
              length: { minimum: 4 }
  
  validates :username, 
              length: { minimum: 4 },
              uniqueness: true
  
end
