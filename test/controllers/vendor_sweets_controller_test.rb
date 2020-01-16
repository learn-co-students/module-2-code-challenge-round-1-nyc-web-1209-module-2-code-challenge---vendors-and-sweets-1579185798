require 'test_helper'

class VendorSweetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vendor_sweets_index_url
    assert_response :success
  end

  test "should get new" do
    get vendor_sweets_new_url
    assert_response :success
  end

  test "should get create" do
    get vendor_sweets_create_url
    assert_response :success
  end

end
