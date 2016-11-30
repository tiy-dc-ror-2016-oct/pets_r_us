require 'test_helper'

class CommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    owner = owners(:russell)
    get new_comment_url(
      commentable_type: "Owner",
      commentable_id: owner.id
    )

    assert_response :success
  end

  test "should create a new comment for an owner" do
    owner = owners(:russell)

    post comments_path(
      commentable_type: "Owner",
      commentable_id: owner.id
    ), params: { comment: {body: 'WOOOOT!!!!'} }

    assert_equal owner.comments.last.body, 'WOOOOT!!!!'
  end

end
