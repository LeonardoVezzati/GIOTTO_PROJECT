class RemoveFurnitureSkuAndFurnitureIdFromOrders < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :furniture_sku
    remove_column :orders, :furniture_id
  end
end
