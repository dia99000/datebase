class CreateExamples < ActiveRecord::Migration[5.2]
  def change
    create_table :examples do |t|
      t.string :ex1
      t.string :ex2
      t.text :ex3

      t.timestamps
    end
  end
end
