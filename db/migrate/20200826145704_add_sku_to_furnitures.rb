class AddSkuToFurnitures < ActiveRecord::Migration[6.0]
  def change
    add_column :furnitures, :sku, :integer
  end
end
