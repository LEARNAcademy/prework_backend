class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.text :content
      t.text :answer
      t.boolean :correct
      t.boolean :completed
      t.text :resources
      t.integer :lesson_id

      t.timestamps
    end
  end
end
