class UsersController < ApplicationController
  before_action :define_user
  
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      flash[:notice] = "You have signed up successfully."
      redirect_to projects_path
    else
      render :new
    end
  end

  def show
  end
  
  def edit
  end
  
  def update
    if @user.update(user_params)
      flash[:notice] = "Profile has been updated."
      redirect_to user_path
    else
      flash[:alert] = "Profile was not updated"
      render :edit
    end
  end

  private
  
  def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation)
  end
  
  def define_user
    @user = User.find(params[:id])
  end
end
