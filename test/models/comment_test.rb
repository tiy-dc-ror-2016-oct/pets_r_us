require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  test "can create a comment" do
    assert Comment.create
  end

  test "when related to an owner" do
    comment = Comment.new(body: "this guy is lame")
    owner = owners(:russell)
    owner.comments << comment
    owner.save
    assert owner.comments.include?(comment)
  end

end
