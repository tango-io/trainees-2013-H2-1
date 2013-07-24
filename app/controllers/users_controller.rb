class UsersController < ApplicationController

  def index
    @user = User.where(id: current_user.id)
  end
  
  def new
    @user = User.all
  end
  
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    binding.pry
    @user.update_attributes(user_params)
    binding.pry
    render 'edit'
  end

  private
  def user_params
   params.require(:user).permit(:all) 
  end

end
