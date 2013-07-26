class ReportsController < ApplicationController
  def new
    @report = Report.new(report_params)
  end
  def index
    @report = Report.all
  end
  def update
    @user = current_user.id
    @report = Report.new
    @report.reason = params[:reports][:option] 
    @report.user_id = @user
    binding.pry
    @report.project_id = params[:id]
    @report.save
    redirect_to project_path 
  end
end
