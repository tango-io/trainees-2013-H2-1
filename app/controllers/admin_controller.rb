class AdminController < ApplicationController
  before_filter :authenticate_user!
  before_filter :is_admin?

  private
  def is_admin?
    unless current_user.admin?
      flash[:error] = "You must be an Admin to access this section"
      redirect_to root_path
    end
  end
end
