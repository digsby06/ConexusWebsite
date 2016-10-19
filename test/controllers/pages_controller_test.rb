require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get experience" do
    get :experience
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get capabilities" do
    get :capabilities
    assert_response :success
  end

end
