require 'test_helper'

class PrivateRealtyProposesControllerTest < ActionController::TestCase
  setup do
    @private_realty_propose = private_realty_proposes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:private_realty_proposes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create private_realty_propose" do
    assert_difference('PrivateRealtyPropose.count') do
      post :create, :private_realty_propose => @private_realty_propose.attributes
    end

    assert_redirected_to private_realty_propose_path(assigns(:private_realty_propose))
  end

  test "should show private_realty_propose" do
    get :show, :id => @private_realty_propose
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @private_realty_propose
    assert_response :success
  end

  test "should update private_realty_propose" do
    put :update, :id => @private_realty_propose, :private_realty_propose => @private_realty_propose.attributes
    assert_redirected_to private_realty_propose_path(assigns(:private_realty_propose))
  end

  test "should destroy private_realty_propose" do
    assert_difference('PrivateRealtyPropose.count', -1) do
      delete :destroy, :id => @private_realty_propose
    end

    assert_redirected_to private_realty_proposes_path
  end
end
