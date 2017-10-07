class CreateSubTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :sub_todos do |t|
      t.references :todo, foreign_key: true
      t.string :title
      t.boolean :completed, default: false
      t.timestamps
    end
  end
end
