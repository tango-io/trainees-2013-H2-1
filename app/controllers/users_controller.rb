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
    @user.update_attributes(user_params)
    render 'edit'
    flash[:message]= 'Changes Saved'
  end

  private
  def user_params
   params.require(:user).permit(:name, :location, :time_zone,:biography) 
  end

end
