class AddLessonTitle < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :title, :string
  end
end
