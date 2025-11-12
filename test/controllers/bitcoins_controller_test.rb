require "test_helper"

class BitcoinsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bitcoins_index_url
    assert_response :success
  end
end
