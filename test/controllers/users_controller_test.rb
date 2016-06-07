require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    # get user_url
    # assert_response :success
  end

def create
	@user = User.new(user_params)
	if @user.save
		flash[:success] = "Welcome to the Sample App!"
		redirect_to @user
	else
		render 'new'
	end
end

def update
	@user = User.find(params[:id])
	if @user.update_attributes(user_params)
		flash[:success] = "Profile updated"
		redirect_to @user
	else
		render 'edit'
	end
end

private
	def user_params 
		params.require(:user).permit(:name, :email, :password,:password_confirmation)
	end
end
