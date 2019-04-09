class UserTodo < ActiveRecord::Base
  belongs_to :assigned_todo, class_name: "Todo"
  belongs_to :assigned_user, class_name: "User"

  scope :projects, ->  (project_id) { where("collaboration_project_id = ?", project_id )}
end
