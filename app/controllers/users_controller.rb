class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    # if current_user.role == 'admin'
      # if params[:role].present? 
        @users = User.where(role: 'developer')
      # end
    # else
      # render json: { errors: 'Not a admin user' }, status: :unauthorised
    # end
  end

  def show
  end

  def update
    if current_user.update_attributes(user_params)
      render :show
    else
      render json: { errors: current_user.errors }, status: :unprocessable_entity
    end
  end

  def generate_report
    @developer_report = User.developer_report
    @project_report = User.project_report
    @developers = User.where(role: 'developer').select('id, email').to_a
    @status_count_report = Todo.status_count_report
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :role, :password, :bio, :image)
  end
end
