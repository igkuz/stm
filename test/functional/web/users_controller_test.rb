require 'test_helper'

class Web::UsersControllerTest < ActionController::TestCase

	def setup
		user = create :user
		if user
			user_sign_in user
		end
	end

	test "test_get_index" do
		get :index
		assert_response :success
	end

end
