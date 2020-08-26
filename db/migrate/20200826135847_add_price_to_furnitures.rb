class AddPriceToFurnitures < ActiveRecord::Migration[6.0]
  def change
    add_monetize :furnitures, :price, currency: { present: false }
  end
end
