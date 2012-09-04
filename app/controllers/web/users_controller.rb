class Web::UsersController < Web::ProtectedController

  def index
    @users = User.all
  end

  def new
   @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to user_path @user, :notice => "Signed up!"
    else
      render "new"
    end
  end

	def show
		@user = User.find(params[:id])
	end

	def edit
		show
	end

	def update
		@user = show
		if @user.update_attributes(params[:user])
			redirect_to user_path @user
		else
			flash.now.alert = "Smth went wrong"
			render "edit"
		end
	end

end