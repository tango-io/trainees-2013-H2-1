class HomeController < ApplicationController
  skip_before_filter :authenticate_user!

  def index
    if user_signed_in?

      if current_user.admin?
        redirect_to admin_users_path
      else
        redirect_to users_path
      end

    end

  end

end
