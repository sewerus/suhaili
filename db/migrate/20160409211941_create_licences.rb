class CreateLicences < ActiveRecord::Migration
  def change
    create_table :licences do |t|
      t.text :content
      t.timestamps null: false
    end
  end
end
