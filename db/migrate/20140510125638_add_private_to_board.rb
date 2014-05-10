class AddPrivateToBoard < ActiveRecord::Migration
  def change
    add_column :boards, :private, :boolean, default: false
  end
end
