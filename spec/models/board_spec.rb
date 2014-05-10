# == Schema Information
#
# Table name: boards
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  preview_id  :integer
#  user_id     :integer
#  created_at  :datetime
#  updated_at  :datetime
#

require 'spec_helper'

describe Board do
  pending "add some examples to (or delete) #{__FILE__}"
end
