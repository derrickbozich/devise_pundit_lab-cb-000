class UsersController < ApplicationController

  def new

  end

  def create

  end

  def update

  end

  def edit

  end

  def show
    @user = User.find(params[:id])
    authorize @user
  end

  def index
    @users = User.all
    @user = current_user
  end


end
