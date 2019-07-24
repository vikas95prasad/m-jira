class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :projects
  has_many :user_projects, foreign_key: "user_id"
  has_many :projects, foreign_key: "owner_id"
  has_many :developer_projects, through: :user_projects

  has_many :todos, foreign_key: "owner_id"
  has_many :todos, foreign_key: "developer_id"

  enum role: [:developer, :admin]

  validates :username, uniqueness: { case_sensitive: false }, presence: true, allow_blank: false, format: { with: /\A[a-zA-Z0-9]+\z/ }


  def generate_jwt
    JWT.encode({ id: id,
                exp: 60.days.from_now.to_i },
               Rails.application.secrets.secret_key_base)
  end

  def self.developer_report
    report = {}
    report['todo'] = []
    report['in_progress'] = []
    report['done'] = []

    User.where(role: 'developer').each do |user|
      todo_co = []
      user.todos.where(status: 'todo').each do |todo|
        if todo
          todo_co << todo.title
        end
      end
      report['todo'] << {user_id: user.id, todo: todo_co}

      in_pro = []
      user.todos.where(status: 'in_progress').each do |todo|
        if todo
          in_pro << todo.title
        end
      end
      report['in_progress'] << {user_id: user.id, in_progress: in_pro}

      done_co = []
      user.todos.where(status: 'done').each do |todo|
        if todo
          done_co << todo.title
        end
      end
      report['done'] << {user_id: user.id, done: done_co}
    end
    return report
  end

  def self.project_report
    report = {}
    report['todo'] = []
    report['in_progress'] = []
    report['done'] = []

    Project.all.each do |project|
      todo_co = []
      project.todos.where(status: 'todo').each do |todo|
        if todo
          todo_co << todo.title
        end
      end
      report['todo'] << {project_id: project.id, todo: todo_co}

      in_pro = []
      project.todos.where(status: 'in_progress').each do |todo|
        if todo
          in_pro << todo.title
        end
      end
      report['in_progress'] << {project_id: project.id, in_progress: in_pro}

      done_co = []
      project.todos.where(status: 'done').each do |todo|
        if todo
          done_co << todo.title
        end
      end
      report['done'] << {project_id: project.id, done: done_co}
    end
    return report
  end
end
