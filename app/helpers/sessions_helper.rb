module SessionsHelper
  def login(user)
    session[:user_id] = user.id
    @current_user = user
  end
  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end
  def logout
    @current_user = session[:user_id] = nil
  end

  def login_spotify_user(user)
    # login to our app, not spotify
    session[:spotify_user] = user
    @spotify_user = user
  end

  def current_spotify_user
    @spotify_user ||= session[:spotify_user]
  end

end
