class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
    @user = user
    if !logged_in?
      redirect_to root_path
    end
  end

  def edit
    @user = user
  end

  def update
  end

  def destroy
    @user = user
  end


  private

  def user_params
    params.require(:user).permit(:name, :password, :happiness, :nausea, :tickets, :height, :admin )
  end

  def user
    @user = User.find(params[:id])
  end
end
