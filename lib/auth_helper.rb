module AuthHelper
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