class UsersController < ApplicationController
  def new
    @user = User.new
  end


  def create
    @user = User.new(username: params[:username], email:params[:email], password: params[:password])
    # @user = User.new(user_params)
    # debugger
    if @user.save
      flash[:success] = "User #{@user.username} has been saved"
      redirect_to users_path
    else
      flash.now[:error] = "#{@user.errors.full_messages}"
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end


end