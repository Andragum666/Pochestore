class CreateProductInventories < ActiveRecord::Migration[5.2]
  def change
    create_table :product_inventories do |t|
      t.references :inventory, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
