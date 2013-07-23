class DashboardController < ApplicationController
  before_filter :authenticate_user!

  def index
      render 'user'
  end
end
