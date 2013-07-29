class Admin::UsersController < AdminController
  def index
    @users = User.all
  end

  def convert_admin
    @user = User.find(params[:id])
    if @user.update_attributes(admin: true)
      flash[:notice] = "Successfuly updated user #{@user.email}"
      redirect_to :index
    else
      flash[:error] = "We're sorry but something went wrong"
      redirect_to :index
    end
  end
end
