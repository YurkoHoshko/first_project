require 'test_helper'

class PrivateRealtyDemandsControllerTest < ActionController::TestCase
  setup do
    @private_realty_demand = private_realty_demands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:private_realty_demands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create private_realty_demand" do
    assert_difference('PrivateRealtyDemand.count') do
      post :create, :private_realty_demand => @private_realty_demand.attributes
    end

    assert_redirected_to private_realty_demand_path(assigns(:private_realty_demand))
  end

  test "should show private_realty_demand" do
    get :show, :id => @private_realty_demand
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @private_realty_demand
    assert_response :success
  end

  test "should update private_realty_demand" do
    put :update, :id => @private_realty_demand, :private_realty_demand => @private_realty_demand.attributes
    assert_redirected_to private_realty_demand_path(assigns(:private_realty_demand))
  end

  test "should destroy private_realty_demand" do
    assert_difference('PrivateRealtyDemand.count', -1) do
      delete :destroy, :id => @private_realty_demand
    end

    assert_redirected_to private_realty_demands_path
  end
end
