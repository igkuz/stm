require 'test_helper'

class Web::UsersControllerTest < ActionController::TestCase

	def setup
		@user = create :user
		if @user
			user_sign_in @user
		end
	end

	test "should get index" do
		get :index
		assert_response :success
	end

	test "should get new" do
		get :new
		assert_response :success
	end

	test "should post create" do
		attrs = attributes_for(:user, :name => "TestName#2", :email => "1@mail.ru")
		post :create, :user => attrs
		assert_response :redirect

		user = User.find_by_email(attrs[:email])
		assert_not_nil user
	end

	test "should get show" do
		get :show, :id => @user.id
		assert_response :success
	end

	test "should get edit" do
		get :edit, :id => @user.id
		assert_response :success
	end

	test "should put update" do
		attrs = attributes_for(:user, :name => "UpdateUser")
		put :update, :id => @user.id, :user => attrs
		assert_response :redirect

		user = User.find(@user.id)
		assert_equal(user.name, attrs[:name])
	end

end
