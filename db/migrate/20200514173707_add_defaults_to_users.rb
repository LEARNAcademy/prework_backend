class AddDefaultsToUsers < ActiveRecord::Migration[6.0]
  def change
    change_column :users, :last_q, :integer, default: 0
    change_column :users, :last_l, :integer, default: 0
  end
end
