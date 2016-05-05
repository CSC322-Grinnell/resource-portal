require 'test_helper'

class UsersControllerTest < ActionController::TestCase

  setup do
    @user = users(:one)
  end

  # Index tests
  test "should get index of users if signed in" do
    sign_in @user
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should not get index of users if not signed in" do
    get :index
    assert_redirected_to new_user_session_path
  end

  # Show tests
  test "should show user if signed in" do
    sign_in @user
    get :show, id: @user
    assert_response :success
  end

  test "should not show user if not signed in" do
    get :show, id: @user
    assert_redirected_to new_user_session_path
  end

  # Destroy Test
  test "should destroy user if logged in" do
    sign_in @user
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end
    assert_redirected_to users_path
  end

  # No user redirect test
  test "signed out user is redirected to admin login if attempts to admin page page" do
    get :admin
    assert_redirected_to new_user_session_path
    #assert_response :failure
  end

# Mail invite page access tests
#  test "able to access mail invite page if not logged in" do
#    sign_in @user
#    get new_user_invitation_path
#    assert_response :success
#  end

#  test "unable to access mail invite page if not logged in" do
#    get new_user_invitation_path
#    assert_redirected_to new_user_session_path
#  end

  # When a user attempts to send out an invite to an invalid address,
  # they get redirected to a new invite page. This test ensures that a
  # one must be signed in to access it.
  test "unable to access failed invitation invite page if not logged in" do

  end

  test "" do

  end

  # Tests for mail user invitation accept?


end
