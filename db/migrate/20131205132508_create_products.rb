class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :pnumber
      t.string :desc

      t.timestamps
    end
  end
end
