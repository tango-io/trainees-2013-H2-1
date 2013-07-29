class DashboardController < ApplicationController
  def index
    if current_user.admin?
      redirect_to admins_path
    else
      redirect_to users_path
    end
  end
end
