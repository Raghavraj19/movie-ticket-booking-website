require 'test_helper'

class ScreenControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get screen_index_url
    assert_response :success
  end

end
