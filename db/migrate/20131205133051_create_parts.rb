class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.integer :product_id
      t.integer :partnumber
      t.string :partdesc

      t.timestamps
    end
    add_index :parts, :product_id
  end
end
