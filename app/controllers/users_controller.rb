
def index
  @user = Users.where(user_id: current_user.id)
end

def new
  @user. Users.new
end

def edit
  @user = Project.find(params[:id])
end

def update
end
private
def project_params
  params.require(:user).permit(:all)
end


end
