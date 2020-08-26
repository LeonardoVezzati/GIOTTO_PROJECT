class AddPhotoToFurnitures < ActiveRecord::Migration[6.0]
  def change
    add_column :furnitures, :photo, :string
  end
end
