require "test_helper"

class ConversationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get conversation_index_url
    assert_response :success
  end

  test "should get show" do
    get conversation_show_url
    assert_response :success
  end

  test "should get create" do
    get conversation_create_url
    assert_response :success
  end

  test "should get update" do
    get conversation_update_url
    assert_response :success
  end

  test "should get destroy" do
    get conversation_destroy_url
    assert_response :success
  end
end
