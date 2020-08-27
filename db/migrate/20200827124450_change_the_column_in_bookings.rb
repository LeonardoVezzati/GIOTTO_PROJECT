class ChangeTheColumnInBookings < ActiveRecord::Migration[6.0]
  def change
    change_column_null :packages, :booking_id, true
  end
end
