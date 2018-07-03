require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get command" do
    get home_command_url
    assert_response :success
  end

  test "should get notify" do
    get home_notify_url
    assert_response :success
  end

  test "should get index" do
    get home_index_url
    assert_response :success
  end

end
