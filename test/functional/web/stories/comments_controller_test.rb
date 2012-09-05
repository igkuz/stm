require 'test_helper'

class Web::Stories::CommentsControllerTest < ActionController::TestCase

	setup do
		@user = create :user
		user_sign_in @user
		@story = create :story, :owner => @user
	end

  test "should get new" do
    get :new, :story_id => @story.id
    assert_response :success
  end

  test "should post create" do
	  attrs = attributes_for(:comment)
	  post :create, :story_id => @story.id, :comment => attrs

	  assert_response :redirect
	  comment = Comment.find_by_story_id(@story.id)
	  assert_equal(attrs[:title], comment.title)
  end

end
