class CreateUserTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :user_todos do |t|
      t.belongs_to :assigned_user, class_name: "User"
      t.belongs_to :assigned_todo, class_name: "Todo"
      t.timestamps null: false
    end
  end
end
