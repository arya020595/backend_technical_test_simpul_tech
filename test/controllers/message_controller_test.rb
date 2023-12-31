require "test_helper"

class MessageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get message_index_url
    assert_response :success
  end

  test "should get show" do
    get message_show_url
    assert_response :success
  end

  test "should get create" do
    get message_create_url
    assert_response :success
  end

  test "should get update" do
    get message_update_url
    assert_response :success
  end

  test "should get destroy" do
    get message_destroy_url
    assert_response :success
  end
end
