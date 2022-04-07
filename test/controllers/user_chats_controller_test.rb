require "test_helper"

class UserChatsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_chats_index_url
    assert_response :success
  end

  test "should get show" do
    get user_chats_show_url
    assert_response :success
  end
end
