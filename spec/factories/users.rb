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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
  end
end
