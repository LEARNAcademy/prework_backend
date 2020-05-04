class RemoveFkeyColumnFromTopicsAddToDataModules < ActiveRecord::Migration[6.0]
  def change
    remove_column :topics, :code_module_id
    add_column :code_modules, :topic_id, :integer
  end
end
