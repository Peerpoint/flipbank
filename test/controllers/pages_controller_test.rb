require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get careers" do
    get :careers
    assert_response :success
  end

  test "should get brokers" do
    get :brokers
    assert_response :success
  end

  test "should get investors" do
    get :investors
    assert_response :success
  end

end
