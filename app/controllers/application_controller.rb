class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  include TracksHelper

  def authenticate_user!
    redirect_to new_session_url unless logged_in?
  end

  def check_if_admin
    if logged_in?
      raise 'Only admins allowed!' unless current_user.admin
    else
      # or you can use the authenticate_user! devise provides to only allow signed_in users
      raise 'Please sign in!'
      redirect_to new_session_url
    end
  end

end
