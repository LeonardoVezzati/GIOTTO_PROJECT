class ChangePhotoColumnFromFurnitures < ActiveRecord::Migration[6.0]
  def change
      change_column :furnitures, :photo, "varchar[] USING (string_to_array(photo, ','))"
  end
end
