class CreatePasts < ActiveRecord::Migration
  def change
    create_table :pasts do |t|
      t.text :content
      t.timestamps null: false
    end
  end
end
