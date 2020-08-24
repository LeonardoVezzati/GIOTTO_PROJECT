class CreateFurnitures < ActiveRecord::Migration[6.0]
  def change
    create_table :furnitures do |t|
      t.integer :retail_price
      t.integer :rental_price
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
