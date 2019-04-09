class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
    	t.belongs_to :owner, class_name: "User"
      t.string :name
      t.text :description
      t.date :due_date
      t.integer :status

      t.timestamps
    end
  end
end
