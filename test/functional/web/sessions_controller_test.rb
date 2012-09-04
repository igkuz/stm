require 'test_helper'

class Web::SessionsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should post create" do
	  user = FactoryGirl.create(:user)
	  attrs = { :email => user.email, :password => user.password }
	  get :create, :user => attrs
	  assert_response :redirect
  end

	test "destroy test" do
		delete :destroy
		assert_response :redirect
	end


end
