class AddImgSrcToQuestion < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :img_src, :text
  end
end
