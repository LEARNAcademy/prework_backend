class AddMultipleChoiceColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :multiple_choice, :boolean
  end
end
