require 'test_helper'

class ResourcesControllerTest < ActionController::TestCase

  def resource_params
    { resource: {
        name: "a",
        description_of_service: "b",
        address: "c",
        contact_email: "fake@email.com"
      }, category_ids: [@category.id]
    }
  end

  setup do
    @resource = resources(:mica)
    @user = users(:admin)
    @category = categories(:employment)
  end

  #test "should get index, regardless of login credentials" do
  #  get :index
  #  assert_response :success
  #  assert_not_nil assigns(:resources)
  #end

  test "should get new resource form, regardless of login credentials" do
    get :new
    assert_response :success
  end

  test "should create resource that is then sent to the pending status" do
    #sign_in @user?
    assert_difference('Resource.count') do
      post :create, resource_params
    end

    assert_redirected_to :root
  end

  test "should show resource" do
    get :show, id: @resource
    assert_response :success
  end

  test "logged in user should be able to access edit resource form" do
    sign_in @user
    get :edit, id: @resource
    assert_response :success
  end


  test "logged out user should not be able to access edit resource form" do
    get :edit, id: @resource
    assert_redirected_to new_user_session_path
  end

  test "should update resource" do
    sign_in @user
    new_name = "new name"

    patch :update, id: @resource, resource: { name: new_name }

    @resource.reload

    assert_equal new_name, @resource.name, "Did not update resource"
    assert_redirected_to admin_path
  end

  test "should destroy resource" do
    sign_in @user

    assert_difference('Resource.count', -1) do
      delete :destroy, id: @resource
    end

    assert_redirected_to admin_path
  end


  test "Automatically submit resource if admin is logged in" do
    sign_in @user

    get :new # Access the new form page
    assert_response :success # Make sure the new page responded
    assert_difference('Resource.count') do # Make sure the resource was created
      post :create, resource_params
    end
    assert_redirected_to root_path # After successful creation, redirected to home page.
  end
  
  test "users can favorite resources" do
    sign_in @user
    get :show, id: @resource
    first('btn[id="favorite"]').click
    assert_response :success
  end
end
