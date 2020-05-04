class AddTopicFkeyToCodeModules < ActiveRecord::Migration[6.0]
  def change
    add_column :topics, :code_module_id, :integer
  end
end
