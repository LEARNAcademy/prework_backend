class RemoveLastLFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :last_l
  end
end
