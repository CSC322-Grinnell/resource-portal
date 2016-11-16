require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  # Setup
  setup do
    @category = categories(:employment)
    @user = users(:admin)
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

  # New category form test
  test "Logged in user should be able to access the create new category page" do
    sign_in @user
    get :new
    assert_response :success
  end

  test "Logged out user should not be able to access the create new category page" do
    get :new
    assert_redirected_to new_user_session_path
  end

  # Create category test
  test "should create category if the user is signed in" do
    sign_in @user
    assert_difference('Category.count') do
      post :create, category: { name: "category" }
      puts assigns(:category).errors
    end
    assert_redirected_to category_path(assigns(:category))
  end

  # Show category tests
  test "should show category without sign in" do
    get :show, id: @category
    assert_response :success
  end

  # Category edit pages tests
  test "logged in user should access category edit page" do
    sign_in @user
    get :edit, id: @category
    assert_response :success
  end

  test "logged out user should not be able to access category edit page" do
    get :edit, id: @category
    assert_redirected_to new_user_session_path
  end

  # Update category test (signed in user only)
  test "should update category" do
    sign_in @user
    new_name = "New Name"
    patch :update, id: @category, category: { name: new_name }
    @category.reload

    assert_equal new_name, @category.name
    assert_redirected_to category_path(assigns(:category))
  end

  # Destroy category test (signed in user only)
  test "should destroy category" do
    sign_in @user
    assert_difference('Category.count', -1) do
      delete :destroy, id: @category
    end

    assert_redirected_to categories_path
  end

end