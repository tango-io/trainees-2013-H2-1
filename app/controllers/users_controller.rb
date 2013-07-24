class UsersController < ApplicationController

  def index
    @profile = User.where(id: current_user.id)
  end
  
  def new
    @profile = User.all
  end
  
  def edit
    @profile = User.find(params[:id])
  end

  def update

  end

  private
  def user_paramas
   params.require(:profile).permit.permit(:all) 
  end

end
