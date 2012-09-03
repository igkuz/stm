class Web::SessionsController < Web::ApplicationController

	def new
		@user = User.new
  end

  def create
    user = User.find_by_email(params[:user][:email])
    if user && user.authenticate(params[:user][:password])
      user_sign_in(user)
      redirect_to root_url, :notice => "Logged in!"
    else
	    @user = User.new(params[:user])
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end

	def destroy
		user_sign_out
		redirect_to root_url
	end

end
