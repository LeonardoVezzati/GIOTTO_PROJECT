class CreateInvoices < ActiveRecord::Migration[6.0]
  def change
    create_table :invoices do |t|
      t.string :number
      t.date :emission
      t.string :status
      t.integer :price

      t.timestamps
    end
  end
end
