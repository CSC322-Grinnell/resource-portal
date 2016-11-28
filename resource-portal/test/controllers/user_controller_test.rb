require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  # Setup
  setup do
    @category = categories(:employment)
    @user = users(:user)
  end
  
  # Index tests
  test "should get category index page if the user is logged in" do
    sign_in @user
    get :index
    assert_response :success
    assert_not_nil assigns(:categories)
  end
  
    test "should not get category index page if user is not logged in" do
    get :index
    assert_redirected_to new_user_session_path
  end
end