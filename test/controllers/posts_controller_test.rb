require "test_helper"

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get make" do
    get posts_make_url
    assert_response :success
  end

  test "should get print" do
    get posts_print_url
    assert_response :success
  end
end
