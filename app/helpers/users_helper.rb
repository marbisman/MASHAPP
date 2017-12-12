module UsersHelper

  def current_spotify_user
      @spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
      hash = @spotify_user.to_hash
      puts hash
      puts @spotify_user.display_name
      @spotify_user
    end

end
