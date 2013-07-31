module ControllerMacros
  def login_admin
    before(:each) do
      @request.env["devise.mapping"] = Device.mappings[:admin]
      sign_in OscarAdmin.create(:admin) 
    end
  end

  def login_user
    before(:each) do
      @request.env["devise.mapping"] = Device.mappings[:user]
      sign_in Carlos.create(:user)
    end
  end
end
