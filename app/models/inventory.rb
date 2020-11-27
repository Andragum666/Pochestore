class Inventory < ApplicationRecord
     has_many :products, through: :product_inventories #, source: :join_association_table_foreign_key_to_objects_table
end
