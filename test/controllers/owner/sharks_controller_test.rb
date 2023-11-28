require "test_helper"

class Owner::SharksControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get owner_sharks_new_url
    assert_response :success
  end

  test "should get create" do
    get owner_sharks_create_url
    assert_response :success
  end
end
