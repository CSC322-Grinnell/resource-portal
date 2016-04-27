require 'test_helper'

class ResourcesControllerTest < ActionController::TestCase
  include Devise::TestHelpers

  setup do
    @resource = resources(:mica)
    @user = users(:one)
    @category = categories(:employment)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resource" do
    assert_difference('Resource.count') do
      post :create, resource: {
        name: "a",
        description_of_service: "b",
        address: "c",
        contact_email: "fake@email.com"
      }, category_ids: [@category.id]
    end

    assert_redirected_to :root
  end

  test "should show resource" do
    get :show, id: @resource
    assert_response :success
  end

  test "should get edit" do
    sign_in @user

    get :edit, id: @resource
    assert_response :success
  end

  test "should update resource" do
    sign_in @user

    patch :update, id: @resource, resource: { name: "new name" }
    assert_redirected_to resource_path(assigns(:resource))
  end

  test "should destroy resource" do
    sign_in @user

    assert_difference('Resource.count', -1) do
      delete :destroy, id: @resource
    end

    assert_redirected_to admin_path
  end
end
