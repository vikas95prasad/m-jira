class Project < ApplicationRecord
  has_many :todos
  has_many :user_projects, foreign_key: "collaboration_project_id"
  has_many :collaborators, through: :user_projects
  belongs_to :owner, class_name: "User"

  validates :name, :description, :due_date, :status, presence: true 

  enum status: [:active, :complete]

  scope :complete, -> { where(status: 1) }
  scope :active, -> { where(status: 0)}
  scope :overdue, -> { where("due_date < ? AND status = ?", Date.today, 0)}
end
