class SessionsController < ApplicationController
  def new
    render :login
  end

  def create
    @user = User.find_by_email(params[:user][:email])
    if @user && @user.password == params[:user][:password]
      login(@user)
      redirect_to bands_url
    else
      flash.now[:error] = "Wrong credentials"
      render :login
    end
  end

  def destroy
    logout
    redirect_to new_session_url
  end
end
