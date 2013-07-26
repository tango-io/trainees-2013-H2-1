class ReportsController < ApplicationController
  def new
    @report = Report.new(report_params)
  end
  def index
    @report = Report.all
  end
  def update
    @report = Report.new
    @report.reason = params[:reports][:option] 
    @report.user_id = current_user.id
    @report.project_id = params[:id]
    @report.save
    redirect_to project_path 
  end
end
