require 'test_helper'

class AdminpageControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get adminpage_new_url
    assert_response :success
  end

  test "should get index" do
    get adminpage_index_url
    assert_response :success
  end

end
