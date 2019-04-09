class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.belongs_to :project
      t.belongs_to :owner, class_name: "User"
      t.string :title
      t.text :description
      t.date :due_date
      t.integer :status

      t.timestamps
    end
  end
end
