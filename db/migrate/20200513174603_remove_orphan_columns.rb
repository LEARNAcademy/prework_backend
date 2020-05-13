class RemoveOrphanColumns < ActiveRecord::Migration[6.0]
  def change
    remove_column :code_modules, :completed
    remove_column :code_modules, :progress
    remove_column :lessons, :completed
    remove_column :questions, :correct
    remove_column :questions, :completed
    add_column :users, :last_l, :integer
  end
end
