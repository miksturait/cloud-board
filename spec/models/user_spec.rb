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

require 'spec_helper'

describe User do
  pending "add some examples to (or delete) #{__FILE__}"
end
