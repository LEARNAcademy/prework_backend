class AddCodeModuleFkeyToQuestionModel < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :code_module_id, :integer
  end
end
