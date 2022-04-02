require "test_helper"

class RentalTrainersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get rental_trainers_show_url
    assert_response :success
  end
end
