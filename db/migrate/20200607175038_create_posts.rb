class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :name
      t.string :overview
      t.string :label1
      t.string :label2
      t.string :label3
      t.string :label4
      t.string :label5
      t.integer :value1
      t.integer :value2
      t.integer :value3
      t.integer :value4
      t.integer :value5
      t.boolean :color1
      t.boolean :color2
      t.boolean :color3
      t.boolean :color4
      t.boolean :color5
      t.string :bgcolor
      t.timestamps
    end
  end
end
