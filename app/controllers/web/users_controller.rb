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
      redirect_to root_url, :notice => "Signed up!"
    else
      render "new"
    end
  end

	def show
		@user = User.find_by_id(params[:id])
	end

	def edit
		show
	end

	def update
		@user = show
		if @user.update_attributes(params[:user])
			redirect_to users_path(@user.id)
		else
			flash.now.alert = "Smth went wrong"
			render "edit"
		end
	end

end