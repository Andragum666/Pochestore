json.extract! product_inventory, :id, :inventory_id, :product_id, :quantity, :created_at, :updated_at
json.url product_inventory_url(product_inventory, format: :json)
