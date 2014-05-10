class AddBoardToImage < ActiveRecord::Migration
  def change
    add_reference :images, :board, index: true
  end
end
