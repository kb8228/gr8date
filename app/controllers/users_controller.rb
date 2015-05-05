class UsersController < ApplicationController

  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id.to_s #logs in user automatically upon signup
      flash[:welcome] = "Welcome, #{@user.name}!"
      redirect_to user_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :location)
  end
end
