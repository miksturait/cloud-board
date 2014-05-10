class UsersController < ApplicationController
  skip_before_action :require_login, only: [:show, :create, :new, :activate]
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  
  def show
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_url, notice: 'ok'
    else
      render action: :new
    end
  end
  
  def edit
    if current_user != @user 
      redirect_to root_path
    end
  end
  
  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'ok'
    else
      render action: :edit
    end
  end
  
  def destroy
    # TODO Destroy
  end
  
  private
    def set_user
      @user = User.find(params[:id])
    end
  
    def user_params
      params.require(:user).permit(:name, :username, :email, :password, :password_confirmation)
    end
end
