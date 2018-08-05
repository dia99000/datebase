class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.string :title
      t.integer :budget
      t.integer :time
      t.text :tmp
      t.integer :user_id

      t.timestamps
    end
  end
end
