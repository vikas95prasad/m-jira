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

  private

  def user_params
    params.require(:user).permit(:username, :email, :role, :password, :bio, :image)
  end
end