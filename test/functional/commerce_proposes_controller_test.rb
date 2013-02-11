require 'test_helper'

class CommerceProposesControllerTest < ActionController::TestCase
  setup do
    @commerce_propose = commerce_proposes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:commerce_proposes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create commerce_propose" do
    assert_difference('CommercePropose.count') do
      post :create, :commerce_propose => @commerce_propose.attributes
    end

    assert_redirected_to commerce_propose_path(assigns(:commerce_propose))
  end

  test "should show commerce_propose" do
    get :show, :id => @commerce_propose
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @commerce_propose
    assert_response :success
  end

  test "should update commerce_propose" do
    put :update, :id => @commerce_propose, :commerce_propose => @commerce_propose.attributes
    assert_redirected_to commerce_propose_path(assigns(:commerce_propose))
  end

  test "should destroy commerce_propose" do
    assert_difference('CommercePropose.count', -1) do
      delete :destroy, :id => @commerce_propose
    end

    assert_redirected_to commerce_proposes_path
  end
end
