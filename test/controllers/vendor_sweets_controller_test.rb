require 'test_helper'

class VendorSweetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vendor_sweets_index_url
    assert_response :success
  end

end
