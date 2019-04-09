class CreateUserProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :user_projects do |t|
      t.belongs_to :collaborator, class_name: "User"
      t.belongs_to :collaboration_project, class_name: "Project"
    end
  end
end
