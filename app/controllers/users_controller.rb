class UsersController < ApplicationController

  def index
    @users = User.all
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
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      flash[:message] = "Your info was updated!"
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    current_user = nil
    redirect_to root_path
  end


  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :location)
  end
end
