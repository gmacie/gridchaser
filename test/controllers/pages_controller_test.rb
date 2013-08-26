require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get upload" do
    get :upload
    assert_response :success
  end

  test "should get activity" do
    get :activity
    assert_response :success
  end

  test "should get analysis" do
    get :analysis
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

end
