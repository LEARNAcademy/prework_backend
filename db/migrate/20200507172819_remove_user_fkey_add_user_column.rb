class RemoveUserFkeyAddUserColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :code_modules, :user_id
    add_column :users, :last_q, :integer
  end
end
