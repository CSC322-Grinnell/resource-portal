require 'test_helper'

class UsersControllerTest < ActionController::TestCase

  setup do
    @admin_user = users(:admin)
    @default_user = users(:default)
  end

  # Index tests
  test "should get index of users if signed in" do
    sign_in @admin_user
    get :admin
    assert_response :success
  end

  test "should not get index of users if not signed in" do
    get :index
    assert_redirected_to new_user_session_path
  end

  # Show tests
  test "should show user if signed in" do
    sign_in @admin_user
    get :show, id: @admin_user
    assert_response :success
  end

  test "should not show user if not signed in" do
    get :show, id: @admin_user
    assert_redirected_to new_user_session_path
  end

  # Destroy Test
  test "should destroy user if logged in" do
    sign_in @admin_user
    assert_difference('User.count', -1) do
      delete :destroy, id: @admin_user
    end
    assert_redirected_to users_path
  end

  # No user redirect test
  test "signed out admin is redirected to admin login if attempts to access admin page" do
    get :admin
    assert_redirected_to new_user_session_path
  end
  
  # Checking that if an admin is logged in, they can see their favorite resources still
  test "admin user can see favorite resources" do
    sign_in @admin_user
    get :index
    assert_response :success
  end
  
  # Check that if user is logged in, they see their favorite resources not user list
  test "users can see favorite resource list" do
    sign_in @default_user
    get :index
    assert_response :success
  end
end
