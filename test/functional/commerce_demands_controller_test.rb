require 'test_helper'

class CommerceDemandsControllerTest < ActionController::TestCase
  setup do
    @commerce_demand = commerce_demands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:commerce_demands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create commerce_demand" do
    assert_difference('CommerceDemand.count') do
      post :create, :commerce_demand => @commerce_demand.attributes
    end

    assert_redirected_to commerce_demand_path(assigns(:commerce_demand))
  end

  test "should show commerce_demand" do
    get :show, :id => @commerce_demand
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @commerce_demand
    assert_response :success
  end

  test "should update commerce_demand" do
    put :update, :id => @commerce_demand, :commerce_demand => @commerce_demand.attributes
    assert_redirected_to commerce_demand_path(assigns(:commerce_demand))
  end

  test "should destroy commerce_demand" do
    assert_difference('CommerceDemand.count', -1) do
      delete :destroy, :id => @commerce_demand
    end

    assert_redirected_to commerce_demands_path
  end
end
