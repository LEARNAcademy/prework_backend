class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.text :content
      t.string :question
      t.boolean :completed
      t.integer :code_module_id

      t.timestamps
    end
  end
end
