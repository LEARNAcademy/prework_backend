class CreateHints < ActiveRecord::Migration[6.0]
  def change
    create_table :hints do |t|
      t.text :title
      t.text :content
      t.text :resource
      t.integer :question_id

      t.timestamps
    end
  end
end
