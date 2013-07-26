class AdminsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :require_admin

  def index
    @projects = Project.all
  end

  def show

  end

  def create
    if params[:admins][:approval] == "1"
      ### Approved? 
      @projectId = params[:admins][:projectId].gsub(/\D/, '').to_i
      @project = Project.find(@projectId)
      @project.approved = true
      @project.save
    end
   redirect_to admins_path 
 end

  ##User Actions
  def users_list
    @users = User.all
  end

  def users_admin
    if params[:admins][:active_admin] == "1"
      @userId = params[:admins][:userId].gsub(/\D/, '').to_i
      @user = User.find(@userId)
      @user.admin = true
      @user.save
    end
    redirect_to admins_path
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
