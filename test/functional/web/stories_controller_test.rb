require "test_helper"

class Web::StoriesControllerTest < ActionController::TestCase

	setup do
		@user = create :user
		user_sign_in @user
		@story = create :story, :owner => @user
	end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

	test "should post create" do
		attrs = attributes_for(:story)
		attrs[:executor_id] = @user.id

		post :create, :story => attrs
		assert_response :redirect

		story = Story.find_by_owner_id(@user.id)
		assert_not_nil story
	end

	test "should get show" do
		get :show, :id => @story.id
		assert_response :success
	end

	test "should get edit" do
		get :edit, :id => @story.id
		assert_response :success
	end

	test "should put update" do
		attrs = attributes_for(:story)
		put :update, :id => @story.id, :story => attrs
		assert_response :redirect

		story = Story.find(@story.id)
		assert_equal(story.title, attrs[:title])
	end

end
