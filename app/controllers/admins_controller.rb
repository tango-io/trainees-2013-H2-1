class AdminsController < ApplicationController
  before_filter :authenticate_user!

 def index
    #@project = Project.all
    @project = Project.where(user_id: current_user.id)
  end


  private
  def admin_params
   params.require(:user).permit(:user_name, :user_id)
  end
end
