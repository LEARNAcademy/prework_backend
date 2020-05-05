class RemoveQuestionColumnAddTitle < ActiveRecord::Migration[6.0]
  def change
    remove_column :lessons, :question
    add_column :questions, :title, :string
  end
end
