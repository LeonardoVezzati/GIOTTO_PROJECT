class AddUserToPackages < ActiveRecord::Migration[6.0]
  def change
    add_reference :packages, :user, null: true, foreign_key: true
  end
end
