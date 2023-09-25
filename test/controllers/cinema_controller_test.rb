require 'test_helper'

class CinemaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cinema_index_url
    assert_response :success
  end

end
