class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :title
      t.text :description
      t.references :preview, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
