class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :content
      t.string :title
      t.string :author
      t.string :img
      t.timestamps null: false
    end
  end
end
