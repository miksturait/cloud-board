# == Schema Information
#
# Table name: collections
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :string(255)
#  user_id     :integer
#  created_at  :datetime
#  updated_at  :datetime
#

require 'spec_helper'

describe Collection do
  pending "add some examples to (or delete) #{__FILE__}"
end
