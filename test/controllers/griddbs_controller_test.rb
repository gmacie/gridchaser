require 'test_helper'

class GriddbsControllerTest < ActionController::TestCase
  setup do
    @griddb = griddbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:griddbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create griddb" do
    assert_difference('Griddb.count') do
      post :create, griddb: { call_sign: @griddb.call_sign, entity: @griddb.entity, ffma_count: @griddb.ffma_count, log_of: @griddb.log_of }
    end

    assert_redirected_to griddb_path(assigns(:griddb))
  end

  test "should show griddb" do
    get :show, id: @griddb
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @griddb
    assert_response :success
  end

  test "should update griddb" do
    patch :update, id: @griddb, griddb: { call_sign: @griddb.call_sign, entity: @griddb.entity, ffma_count: @griddb.ffma_count, log_of: @griddb.log_of }
    assert_redirected_to griddb_path(assigns(:griddb))
  end

  test "should destroy griddb" do
    assert_difference('Griddb.count', -1) do
      delete :destroy, id: @griddb
    end

    assert_redirected_to griddbs_path
  end
end
