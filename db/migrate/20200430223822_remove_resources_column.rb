class RemoveResourcesColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :questions, :resources
  end
end
