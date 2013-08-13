class UsersController < ApplicationController
  def create #signup
    @user = User.new(params[:user])
    if @user.save
      login(@user)
      # msg = SignupMailer.welcome_email(@user)
 #      msg.deliver!
      redirect_to bands_url
    end
  end

  def new #signup page
    render :new
  end
end
