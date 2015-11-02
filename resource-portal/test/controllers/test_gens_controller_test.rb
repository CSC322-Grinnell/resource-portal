require 'test_helper'

class TestGensControllerTest < ActionController::TestCase
  setup do
    @test_gen = test_gens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_gens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_gen" do
    assert_difference('TestGen.count') do
      post :create, test_gen: { game: @test_gen.game, score: @test_gen.score }
    end

    assert_redirected_to test_gen_path(assigns(:test_gen))
  end

  test "should show test_gen" do
    get :show, id: @test_gen
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_gen
    assert_response :success
  end

  test "should update test_gen" do
    patch :update, id: @test_gen, test_gen: { game: @test_gen.game, score: @test_gen.score }
    assert_redirected_to test_gen_path(assigns(:test_gen))
  end

  test "should destroy test_gen" do
    assert_difference('TestGen.count', -1) do
      delete :destroy, id: @test_gen
    end

    assert_redirected_to test_gens_path
  end
end
