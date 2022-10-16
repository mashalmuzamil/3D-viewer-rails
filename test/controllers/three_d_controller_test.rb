require 'test_helper'

class ThreeDControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get three_d_index_url
    assert_response :success
  end

end
