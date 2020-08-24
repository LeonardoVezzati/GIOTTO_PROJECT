class AddCategoryToFurnitures < ActiveRecord::Migration[6.0]
  def change
    add_column :furnitures, :category, :string
  end
end
