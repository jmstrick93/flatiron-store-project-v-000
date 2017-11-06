module SessionsHelper

  def session_headers
    render :partial => 'sessions/session_headers'
  end

  def current_user
    if logged_in?
      User.find_by(id: session[:user_id])
    end
  end

  def logged_in?
    session[:user_id] && !session[:user_id].blank? ? true : false
  end
end
