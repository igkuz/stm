class Web::UsersController < Web::ApplicationController

  def index
    @users = User.all
  end

  def create
    user = User.new(params[:user])
    user.save
    redirect_to :users_path
  end
end