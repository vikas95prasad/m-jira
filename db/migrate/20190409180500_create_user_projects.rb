class CreateUserProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :user_projects do |t|
      t.belongs_to :user, class_name: "User"
      t.belongs_to :user_project, class_name: "Project"
    end
  end
end
