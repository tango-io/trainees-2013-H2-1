class DashboardController < ApplicationController
  before_filter :authenticate_user!

  def index
    if current_user.admin?
      redirect_to admin_dashboard_path
    else
      redirect_to user_dashboard_path
    end
  end

end
