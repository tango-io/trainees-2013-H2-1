class ProjectsController < ApplicationController
  before_filter :authenticate_user!
  def index
    #@project = Project.all
    @project = Project.where(user_id: current_user.id)
  end

  def new
    @project = Project.new
  end

  def create
    @user = current_user
    @project = Project.create(project_params)
    #binding.pry
    redirect_to projects_path
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    @project.update_attributes(project_params)
    redirect_to projects_path
  end

  def destroy
    @project =Project.destroy(params[:id])
    redirect_to projects_path
  end

  private
  def project_params
   params.require(:project).permit(:project_name,:project_content,:duration,:city,:goal,:tags, :user_id)
  end
end
