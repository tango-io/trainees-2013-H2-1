class ProjectsController < ApplicationController
  before_filter :authenticate_user!
  def index
    @project = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.create(project_params)
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
    params.require(:project).permit(:project_name,:project_content)
  end
end
