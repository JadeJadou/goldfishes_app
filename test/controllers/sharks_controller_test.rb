require "test_helper"

class SharksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sharks_index_url
    assert_response :success
  end

  test "should get show" do
    get sharks_show_url
    assert_response :success
  end
end
