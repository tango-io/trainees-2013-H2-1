class HomeController < ApplicationController

  def index
    if user_signed_in?
      if current_user.admin?
        redirect_to :controller => 'dashboard', :action => 'index'
      end
    end
  end
end
