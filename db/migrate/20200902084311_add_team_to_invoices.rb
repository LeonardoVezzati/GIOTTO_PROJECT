class AddTeamToInvoices < ActiveRecord::Migration[6.0]
  def change
    add_reference :invoices, :team, null: false, foreign_key: true
  end
end
