module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id
  end
  
  def currrent_user
    if user_id = session[:user_id]
      @current_user ||= User.find_by(id: user_id)
    end
  end

  def logged_in?
    !current_user.nil?
  end

  def logout
    session.delete(:user_id)
    @current_user = nil
  end
end
