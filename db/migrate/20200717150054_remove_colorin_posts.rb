class RemoveColorinPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :color1, :boolean
    remove_column :posts, :color2, :boolean
    remove_column :posts, :color3, :boolean
    remove_column :posts, :color4, :boolean
    remove_column :posts, :color5, :boolean
  end
end
