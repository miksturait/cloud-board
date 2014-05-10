# == Schema Information
#
# Table name: users
#
#  id                           :integer          not null, primary key
#  username                     :string(255)      not null
#  email                        :string(255)      not null
#  crypted_password             :string(255)      not null
#  salt                         :string(255)      not null
#  created_at                   :datetime
#  updated_at                   :datetime
#  remember_me_token            :string(255)
#  remember_me_token_expires_at :datetime
#

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
