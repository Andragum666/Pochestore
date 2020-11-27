class CreateInventoryRegistries < ActiveRecord::Migration[5.2]
  def change
    create_table :inventory_registries do |t|
      t.references :user, foreign_key: true
      t.references :inventory, foreign_key: true

      t.timestamps
    end
  end
end
