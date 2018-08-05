class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :order
      t.integer :plan_id

      t.timestamps
    end
  end
end
