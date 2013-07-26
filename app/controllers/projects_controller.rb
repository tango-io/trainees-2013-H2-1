class ProjectsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :require_admin, only: :destroy

  def index
    @projects = Project.where(user_id: current_user.id).custom_sorted 
  end

  def new
    @project = Project.new
    @categories = Category.all
  end

  def create
    @categories = Category.all
    @user = current_user
    @project = Project.new(project_params)
    #
    if @project.save
      redirect_to projects_path
    else
      render 'new'
    end
  end

  def edit
    @project = Project.find(params[:id])
    @categories = Category.all
  end

  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(project_params)
      redirect_to projects_path
    else
      render 'edit'
    end
  end

  def destroy
    @project =Project.destroy(params[:id])
    redirect_to projects_path
  end

  def show
    @project = Project.find(params[:id])
    @owner= User.find(:all, :conditions => "id=#{@project[:user_id]}")
    #@categoryname = Category.find(:all ,:conditions => "id=#{@project[:sub_category_id]}")
  end

  private
  def project_params
   params.require(:project).permit(:project_name,:project_content,:duration,:city,:goal,:tags, :user_id, :sub_category_id, :image)
  end

  def require_admin
    @user = current_user
    unless current_user.admin?
      flash[:error] = "You must be an Admin to do that!"
      redirect_to projects_path 
    end
  end

 end
