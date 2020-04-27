class CreateCodeModules < ActiveRecord::Migration[6.0]
  def change
    create_table :code_modules do |t|
      t.string :lesson
      t.string :progress
      t.boolean :completed
      t.integer :user_id

      t.timestamps
    end
  end
end
