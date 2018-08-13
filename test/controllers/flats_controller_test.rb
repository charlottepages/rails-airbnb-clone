require 'test_helper'

class FlatsControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get flats_list_url
    assert_response :success
  end

  test "should get show" do
    get flats_show_url
    assert_response :success
  end

end
