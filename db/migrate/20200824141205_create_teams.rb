class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :company
      t.integer :rental_period
      t.integer :budget

      t.timestamps
    end
  end
end
