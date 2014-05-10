class CreateCollectionImages < ActiveRecord::Migration
  def change
    create_table :collection_images do |t|
      t.references :image, index: true
      t.references :collection, index: true

      t.timestamps
    end
  end
end
