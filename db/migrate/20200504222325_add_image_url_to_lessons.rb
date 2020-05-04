class AddImageUrlToLessons < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :img_src, :text
  end
end
