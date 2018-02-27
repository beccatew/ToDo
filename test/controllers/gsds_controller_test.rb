require 'test_helper'

class GsdsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gsds_index_url
    assert_response :success
  end

  test "should get show" do
    get gsds_show_url
    assert_response :success
  end

  test "should get new" do
    get gsds_new_url
    assert_response :success
  end

end
