class UsersController < ApplicationController
  expose(:users)
  expose(:user, attributes: :user_params)

  def index
  end
  
  def show
  end

  def edit
  end

  def create
    if user.save
      redirect_to(user)
    else
      render :new
    end
  end

  def new
  end
  
  def destroy
    user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  def update
    if user.save
      redirect_to(user)
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :password)
  end

end
