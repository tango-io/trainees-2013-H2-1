class AdminsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :require_admin

 def index
    @project = Project.all
 end


  private
  def admin_params
   params.require(:user).permit(:user_name, :user_id)
  end
 
  def require_admin
    @user = current_user
    unless current_user.admin?
      flash[:error] = "You must be an Admin to access this section"
      redirect_to root_path # halts request cycle
    end
  end

end
