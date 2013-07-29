class Admin::ProjectsController < AdminController
  def index
    @projects = Project.not_approved
  end
  
  def approve
    @project = Project.find(params[:id])
    if @project.update_attributes(approved: true)
      flash[:notice] = "Successfuly approved project #{@project.project_name}"
      redirect_to :index
    else
      flash[:error] = "We're sorry but something went wrong"
      redirect_to :index
    end
  end
end
