class CreateCruises < ActiveRecord::Migration
  def change
    create_table :cruises do |t|

      t.timestamps null: false
    end
  end
end
