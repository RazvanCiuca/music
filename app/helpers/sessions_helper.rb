module SessionsHelper
  def current_user
    return nil unless session[:token]
    @current_user ||= User.find_by_token(session[:token])
  end

  def logged_in?
    !!current_user
  end

  def login(user)
    user.token = generate_unique_random_token
    user.save!
    session[:token] = user.token
  end

  def logout
    session[:token] = nil
  end

  def generate_unique_random_token
    token = SecureRandom.urlsafe_base64
    while User.find_by_token(token)
      token = SecureRandom.urlsafe_base64
    end
    token
  end
end
