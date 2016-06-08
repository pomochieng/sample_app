require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial Sample App"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | Ruby on Rails Tutorial Sample App"
  end

	test "should get Curriculumn_Vitae" do
    get :cv
    assert_response :success
    assert_select "title", "Curriculumn_Vitae | Ruby on Rails Tutorial Sample App"
    # assert_select "h3", "Career Intent"
    # assert_select "h3", "Personal Information"
    # assert_select "h3", "Work Experience"
    # assert_select "h3", "Professional Background"
    # assert_select "h3", "Academic Background"
    # assert_select "h2", "Other Courses"
    # assert_select "h3", "Hobbies"
    # assert_select "h3", "Referees"
  end
end