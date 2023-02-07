require "test_helper"

class CommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get comments_index,_url
    assert_response :success
  end

  test "should get new" do
    get comments_new,_url
    assert_response :success
  end

  test "should get create" do
    get comments_create_url
    assert_response :success
  end
end
