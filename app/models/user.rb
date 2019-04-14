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
end
