class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :status
      t.date :delivery_date
      t.time :delivery_time
      t.integer :floor
      t.boolean :building_elevator
      t.boolean :external_elevator
      t.string :delivery_address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
