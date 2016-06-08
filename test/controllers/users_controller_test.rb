require 'test_helper'

class UsersControllerTest < ActionController::TestCase
	
	def setup
		@user = users(:peter)
		@other_user = users(:archer)
	end

	test "should get new" do
		get :new
		assert_response :success
	end

	test "should redirect edit when not logged in" do
		get :edit, id: @user
		assert_not flash.empty?
		assert_redirected_to login_url
	end

	test "should redirect update when not logged in" do
		patch :update, id: @user, user: { name: @user.name, email: @user.email }
		assert_not flash.empty?
		assert_redirected_to login_url
	end

	test "should redirect edit when logged in as wrong user" do
		log_in_as(@other_user)
		get :edit, id: @user
		assert flash.empty?
		assert_redirected_to root_url
	end

	test "should redirect update when logged in as wrong user" do
		log_in_as(@other_user)
		patch :update, id: @user, user: { name: @user.name, email: @user.email }
		assert flash.empty?
		assert_redirected_to root_url
	end



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
