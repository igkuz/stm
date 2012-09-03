module AuthHelper

	# User auth
	def user_sign_in(user)
		session[:user_id] = user.id
	end

	def user_sign_out
		session[:user_id] = nil
	end

	def user_signed_in?
		session[:user_id] && User.find_by_id(session[:user_id])
	end

	def logged_in?
		!!current_user
	end

	def require_login
		unless logged_in?
			flash[:notice] = "Log in to view this page"
			redirect_to new_session_path
		end
	end

end