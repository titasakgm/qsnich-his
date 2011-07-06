require 'test_helper'

class HisControllerTest < ActionController::TestCase
  setup do
    @hi = his(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:his)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hi" do
    assert_difference('Hi.count') do
      post :create, :hi => @hi.attributes
    end

    assert_redirected_to hi_path(assigns(:hi))
  end

  test "should show hi" do
    get :show, :id => @hi.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @hi.to_param
    assert_response :success
  end

  test "should update hi" do
    put :update, :id => @hi.to_param, :hi => @hi.attributes
    assert_redirected_to hi_path(assigns(:hi))
  end

  test "should destroy hi" do
    assert_difference('Hi.count', -1) do
      delete :destroy, :id => @hi.to_param
    end

    assert_redirected_to his_path
  end
end
