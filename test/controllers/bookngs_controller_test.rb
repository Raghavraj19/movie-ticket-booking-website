require 'test_helper'

class BookngsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bookngs_index_url
    assert_response :success
  end

  test "should get new" do
    get bookngs_new_url
    assert_response :success
  end

  test "should get create" do
    get bookngs_create_url
    assert_response :success
  end

  test "should get show" do
    get bookngs_show_url
    assert_response :success
  end

end
