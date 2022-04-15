require "test_helper"

class MapSearchesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get map_searches_index_url
    assert_response :success
  end
end
