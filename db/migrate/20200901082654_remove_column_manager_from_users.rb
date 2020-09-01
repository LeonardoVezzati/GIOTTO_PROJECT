class RemoveColumnManagerFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :manager, :boolean
  end
end
