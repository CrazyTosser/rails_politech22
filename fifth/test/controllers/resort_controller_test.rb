require "test_helper"

class ResortControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get resort_index_url
    assert_response :success
  end

  test "should get show" do
    get resort_show_url
    assert_response :success
  end
end
