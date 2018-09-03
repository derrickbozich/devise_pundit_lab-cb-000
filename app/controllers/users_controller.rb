class UsersController < ApplicationController

  def new
    @user = current_user

  end

  def create

  end

  def update

  end

  def edit

  end

  def show
    @user = User.find(params[:id])
    # authorize @user, "Custom alert independent of the post_controller and application Pundit::NotAuthorizedError"
  end

  def index
    @users = User.all
    @user = current_user
  end


end
