class UserProject < ActiveRecord::Base
  belongs_to :developer_project, class_name: "Project"
  belongs_to :developer, class_name: "User"

  scope :projects, ->  (project_id) { where("developer_project_id = ?", project_id )}
end
