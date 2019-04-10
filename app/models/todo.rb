class Todo < ApplicationRecord
  belongs_to :project
  belongs_to :owner, class_name: "User"
  belongs_to :developer, class_name: "User"

  validates :title, :description, :due_date, :status, :project_id, :owner_id, presence: true

  enum status: [:active, :complete]

  scope :complete, -> { where(status: 1) }
  scope :active, -> { where(status: 0)}
  scope :overdue, -> { where("due_date < ? AND status = ?", Date.today, 0)}
end
