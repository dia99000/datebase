class CreateSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :spots do |t|
      t.string :place_name
      t.integer :price
      t.integer :time
      t.integer :item_id

      t.timestamps
    end
  end
end
