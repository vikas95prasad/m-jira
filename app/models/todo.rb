class Todo < ApplicationRecord
  belongs_to :project
  has_many :user_todos, foreign_key: "assigned_todo_id"
  has_many :assigned_users, through: :user_todos
  belongs_to :owner, class_name: "User"

  validates :name, :description, :due_date, :status, :project_id, presence: true

  enum status: [:active, :complete]

  scope :complete, -> { where(status: 1) }
  scope :active, -> { where(status: 0)}
  scope :overdue, -> { where("due_date < ? AND status = ?", Date.today, 0)}
end
