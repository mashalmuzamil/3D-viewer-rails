require 'test_helper'

class ThreeDFilesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get three_d_files_index_url
    assert_response :success
  end

  test "should get new" do
    get three_d_files_new_url
    assert_response :success
  end

  test "should get create" do
    get three_d_files_create_url
    assert_response :success
  end

  test "should get destroy" do
    get three_d_files_destroy_url
    assert_response :success
  end

end
