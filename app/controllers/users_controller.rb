class UsersController < ApplicationController
  before_action :require_login, except: [:new, :create]
  before_action :authorized?, only: [:edit, :update, :destroy]

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
      redirect_to new_plan_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
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
    session.delete(@user.id)
    redirect_to root_path
  end


  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :location)
  end

  def require_login
    unless logged_in?
      flash[:error] = "Please log in or sign up to access this page."
      redirect_to login_path
    end
  end

  def authorized?
    unless current_user == User.find(params[:id])
      flash[:error] = "You are not authorized to access that page."
      redirect_to user_path(current_user)
    end
  end

end
