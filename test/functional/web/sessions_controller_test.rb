require 'test_helper'

class Web::SessionsControllerTest < ActionController::TestCase
  setup do
	  @user = create :user
  end

	test "should get new" do
    get :new
    assert_response :success
  end

  test "should post create" do
	  attrs = { :email => @user.email, :password => @user.password }
	  get :create, :user => attrs
	  assert_response :redirect
  end

	test "should delete destroy" do
		user_sign_in @user
		assert user_signed_in?

		delete :destroy
		assert_response :redirect

		assert !user_signed_in?
	end


end
