require 'test_helper'

class TestControllerTest < ActionController::TestCase
  test "should get bootstrap" do
    get :bootstrap
    assert_response :success
  end

  test "should get bootswatch" do
    get :bootswatch
    assert_response :success
  end

end
